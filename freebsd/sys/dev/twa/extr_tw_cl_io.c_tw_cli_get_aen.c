
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_req_context {scalar_t__ data; int tw_cli_callback; int flags; } ;
struct tw_cli_ctlr_context {int internal_req_busy; int ctlr_handle; } ;
typedef int TW_INT32 ;


 int TW_CLI_FREE_Q ;
 int TW_CLI_REQ_FLAGS_9K ;
 int TW_CLI_REQ_FLAGS_INTERNAL ;
 int TW_CL_FALSE ;
 struct tw_cli_req_context* TW_CL_NULL ;
 int TW_OSL_EBUSY ;
 int tw_cli_aen_callback ;
 int tw_cli_dbg_printf (int,int ,int ,char*,...) ;
 struct tw_cli_req_context* tw_cli_get_request (struct tw_cli_ctlr_context*) ;
 int tw_cli_req_q_insert_tail (struct tw_cli_req_context*,int ) ;
 int tw_cli_send_scsi_cmd (struct tw_cli_req_context*,int) ;
 int tw_osl_cur_func () ;

TW_INT32
tw_cli_get_aen(struct tw_cli_ctlr_context *ctlr)
{
 struct tw_cli_req_context *req;
 TW_INT32 error;

 tw_cli_dbg_printf(4, ctlr->ctlr_handle, tw_osl_cur_func(), "entered");

 if ((req = tw_cli_get_request(ctlr
  )) == TW_CL_NULL)
  return(TW_OSL_EBUSY);

 req->flags |= TW_CLI_REQ_FLAGS_INTERNAL;
 req->flags |= TW_CLI_REQ_FLAGS_9K;
 req->tw_cli_callback = tw_cli_aen_callback;
 if ((error = tw_cli_send_scsi_cmd(req, 0x03 ))) {
  tw_cli_dbg_printf(1, ctlr->ctlr_handle, tw_osl_cur_func(),
   "Could not send SCSI command",
   "request = %p, error = %d", req, error);
  if (req->data)
   ctlr->internal_req_busy = TW_CL_FALSE;
  tw_cli_req_q_insert_tail(req, TW_CLI_FREE_Q);
 }
 return(error);
}
