
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twa_softc {int dummy; } ;
struct tw_cli_req_context {int req_handle; } ;
struct tw_cli_ctlr_context {void* reset_needed; void* reset_in_progress; int * req_q_head; scalar_t__ max_simult_reqs; void* get_more_aens; void* internal_req_busy; } ;
struct tw_cl_ctlr_handle {struct twa_softc* osl_ctlr_ctxt; scalar_t__ cl_ctlr_ctxt; } ;
typedef int TW_UINT16 ;
typedef scalar_t__ TW_INT32 ;


 int TWA_CONTROL_UNMASK_COMMAND_INTERRUPT ;
 scalar_t__ TW_CLI_MAX_RESET_ATTEMPTS ;
 size_t TW_CLI_PENDING_Q ;
 int TW_CLI_RESET_Q ;
 int TW_CLI_WRITE_CONTROL_REGISTER (struct tw_cl_ctlr_handle*,int ) ;
 void* TW_CL_FALSE ;
 int TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT ;
 struct tw_cli_req_context* TW_CL_NULL ;
 struct tw_cli_req_context* TW_CL_Q_FIRST_ITEM (int *) ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 int TW_CL_SEVERITY_INFO_STRING ;
 void* TW_CL_TRUE ;
 int tw_cl_create_event (struct tw_cl_ctlr_handle*,void*,int ,int,int,int ,char*,char*,...) ;
 int tw_cli_dbg_printf (int,struct tw_cl_ctlr_handle*,int ,char*) ;
 int tw_cli_drain_busy_queue (struct tw_cli_ctlr_context*) ;
 int tw_cli_drain_complete_queue (struct tw_cli_ctlr_context*) ;
 int tw_cli_drain_pending_queue (struct tw_cli_ctlr_context*) ;
 int tw_cli_enable_interrupts (struct tw_cli_ctlr_context*) ;
 scalar_t__ tw_cli_init_connection (struct tw_cli_ctlr_context*,int ,int ,int ,int ,int ,int ,struct tw_cli_req_context*,struct tw_cli_req_context*,struct tw_cli_req_context*,struct tw_cli_req_context*,struct tw_cli_req_context*) ;
 int tw_cli_req_q_insert_tail (struct tw_cli_req_context*,size_t) ;
 struct tw_cli_req_context* tw_cli_req_q_remove_head (struct tw_cli_ctlr_context*,int ) ;
 scalar_t__ tw_cli_soft_reset (struct tw_cli_ctlr_context*) ;
 int tw_osl_cur_func () ;
 int tw_osl_scan_bus (struct tw_cl_ctlr_handle*) ;
 int tw_osl_timeout (int ) ;
 int twa_setup_intr (struct twa_softc*) ;
 int twa_teardown_intr (struct twa_softc*) ;

TW_INT32
tw_cl_reset_ctlr(struct tw_cl_ctlr_handle *ctlr_handle)
{
 struct tw_cli_ctlr_context *ctlr =
  (struct tw_cli_ctlr_context *)(ctlr_handle->cl_ctlr_ctxt);
 struct twa_softc *sc = ctlr_handle->osl_ctlr_ctxt;
 struct tw_cli_req_context *req;
 TW_INT32 reset_attempt = 1;
 TW_INT32 error = 0;

 tw_cli_dbg_printf(2, ctlr_handle, tw_osl_cur_func(), "entered");

 ctlr->reset_in_progress = TW_CL_TRUE;
 twa_teardown_intr(sc);
 tw_cli_drain_complete_queue(ctlr);
 tw_cli_drain_busy_queue(ctlr);
 tw_cli_drain_pending_queue(ctlr);
 ctlr->internal_req_busy = TW_CL_FALSE;
 ctlr->get_more_aens = TW_CL_FALSE;


 while (reset_attempt <= TW_CLI_MAX_RESET_ATTEMPTS) {
  if ((error = tw_cli_soft_reset(ctlr))) {
   tw_cl_create_event(ctlr_handle, TW_CL_FALSE,
    TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT,
    0x1105, 0x1, TW_CL_SEVERITY_ERROR_STRING,
    "Controller reset failed",
    "error = %d; attempt %d", error, reset_attempt++);
   reset_attempt++;
   continue;
  }


  if ((error = tw_cli_init_connection(ctlr,
    (TW_UINT16)(ctlr->max_simult_reqs),
    0, 0, 0, 0, 0, TW_CL_NULL, TW_CL_NULL, TW_CL_NULL,
    TW_CL_NULL, TW_CL_NULL))) {
   tw_cl_create_event(ctlr_handle, TW_CL_FALSE,
    TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT,
    0x1106, 0x1, TW_CL_SEVERITY_ERROR_STRING,
    "Can't initialize connection after reset",
    "error = %d", error);
   reset_attempt++;
   continue;
  }







  break;
 }


 while ((req = tw_cli_req_q_remove_head(ctlr, TW_CLI_RESET_Q)) != TW_CL_NULL) {
  tw_osl_timeout(req->req_handle);
  tw_cli_req_q_insert_tail(req, TW_CLI_PENDING_Q);
 }

 twa_setup_intr(sc);
 tw_cli_enable_interrupts(ctlr);
 if ((TW_CL_Q_FIRST_ITEM(&(ctlr->req_q_head[TW_CLI_PENDING_Q]))) != TW_CL_NULL)
  TW_CLI_WRITE_CONTROL_REGISTER(ctlr_handle,
   TWA_CONTROL_UNMASK_COMMAND_INTERRUPT);
 ctlr->reset_in_progress = TW_CL_FALSE;
 ctlr->reset_needed = TW_CL_FALSE;


 tw_osl_scan_bus(ctlr_handle);

 return(error);
}
