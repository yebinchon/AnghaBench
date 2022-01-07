
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tw_cli_req_context {scalar_t__ data; } ;
struct tw_cli_ctlr_context {int ctlr_handle; int interrupts_enabled; int get_more_aens; int internal_req_busy; } ;
struct TYPE_2__ {int error; } ;
struct tw_cl_command_header {TYPE_1__ status_block; } ;
typedef int TW_UINT32 ;
typedef int TW_UINT16 ;
typedef int TW_TIME ;




 int TWA_PARAM_TIME_SCHED_TIME ;
 int TWA_PARAM_TIME_TABLE ;
 int TW_CLI_FREE_Q ;
 int TW_CL_FALSE ;
 int TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ;
 int TW_CL_MESSAGE_SOURCE_CONTROLLER_EVENT ;
 int TW_CL_NULL ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 int TW_CL_TRUE ;
 int tw_cl_create_event (int ,int ,int ,int,int,int ,char*,char*,int ) ;
 int tw_cli_create_ctlr_event (struct tw_cli_ctlr_context*,int ,struct tw_cl_command_header*) ;
 int tw_cli_dbg_printf (int,int ,int ,char*) ;
 int tw_cli_param_callback ;
 int tw_cli_req_q_insert_tail (struct tw_cli_req_context*,int ) ;
 int tw_cli_set_param (struct tw_cli_ctlr_context*,int ,int ,int,int*,int ) ;
 int tw_osl_cur_func () ;
 int tw_osl_get_local_time () ;

TW_UINT16
tw_cli_manage_aen(struct tw_cli_ctlr_context *ctlr,
 struct tw_cli_req_context *req)
{
 struct tw_cl_command_header *cmd_hdr;
 TW_UINT16 aen_code;
 TW_TIME local_time;
 TW_TIME sync_time;
 TW_UINT32 error;

 tw_cli_dbg_printf(4, ctlr->ctlr_handle, tw_osl_cur_func(), "entered");

 cmd_hdr = (struct tw_cl_command_header *)(req->data);
 aen_code = cmd_hdr->status_block.error;

 switch (aen_code) {
 case 128:
  tw_cli_dbg_printf(4, ctlr->ctlr_handle, tw_osl_cur_func(),
   "Received AEN_SYNC_TIME");




  ctlr->internal_req_busy = TW_CL_FALSE;
  tw_cli_req_q_insert_tail(req, TW_CLI_FREE_Q);
  if (ctlr->interrupts_enabled)
   ctlr->get_more_aens = TW_CL_TRUE;

  local_time = tw_osl_get_local_time();
  sync_time = (local_time - (3 * 86400)) % 604800;
  if ((error = tw_cli_set_param(ctlr, TWA_PARAM_TIME_TABLE,
    TWA_PARAM_TIME_SCHED_TIME, 4,
    &sync_time,
    (ctlr->interrupts_enabled)
    ? tw_cli_param_callback : TW_CL_NULL)))
   tw_cl_create_event(ctlr->ctlr_handle, TW_CL_FALSE,
    TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
    0x1208, 0x1, TW_CL_SEVERITY_ERROR_STRING,
    "Unable to sync time with ctlr",
    "error = %d", error);

  break;


 case 129:
  tw_cli_dbg_printf(4, ctlr->ctlr_handle, tw_osl_cur_func(),
   "AEN queue empty");
  break;


 default:


  tw_cli_dbg_printf(4, ctlr->ctlr_handle, tw_osl_cur_func(),
   "Queueing AEN");
  tw_cli_create_ctlr_event(ctlr,
   TW_CL_MESSAGE_SOURCE_CONTROLLER_EVENT,
   cmd_hdr);
  break;
 }
 return(aen_code);
}
