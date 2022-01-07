
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_ctlr_context {int * req_q_head; int active; scalar_t__ reset_in_progress; } ;
struct tw_cl_ctlr_handle {scalar_t__ cl_ctlr_ctxt; } ;
typedef int TW_UINT32 ;
typedef int TW_INT32 ;


 int TWA_CONTROL_CLEAR_ATTENTION_INTERRUPT ;
 int TWA_CONTROL_CLEAR_HOST_INTERRUPT ;
 int TWA_CONTROL_MASK_COMMAND_INTERRUPT ;
 int TWA_STATUS_ATTENTION_INTERRUPT ;
 int TWA_STATUS_COMMAND_INTERRUPT ;
 int TWA_STATUS_HOST_INTERRUPT ;
 int TWA_STATUS_RESPONSE_INTERRUPT ;
 size_t TW_CLI_PENDING_Q ;
 int TW_CLI_READ_STATUS_REGISTER (struct tw_cl_ctlr_handle*) ;
 int TW_CLI_WRITE_CONTROL_REGISTER (struct tw_cl_ctlr_handle*,int ) ;
 int TW_CL_FALSE ;
 scalar_t__ TW_CL_NULL ;
 scalar_t__ TW_CL_Q_FIRST_ITEM (int *) ;
 int TW_CL_TRUE ;
 scalar_t__ tw_cli_check_ctlr_state (struct tw_cli_ctlr_context*,int) ;
 int tw_cli_dbg_printf (int,struct tw_cl_ctlr_handle*,int ,char*) ;
 int tw_cli_process_attn_intr (struct tw_cli_ctlr_context*) ;
 int tw_cli_process_cmd_intr (struct tw_cli_ctlr_context*) ;
 int tw_cli_process_resp_intr (struct tw_cli_ctlr_context*) ;
 int tw_osl_cur_func () ;

TW_INT32
tw_cl_interrupt(struct tw_cl_ctlr_handle *ctlr_handle)
{
 struct tw_cli_ctlr_context *ctlr =
  (struct tw_cli_ctlr_context *)(ctlr_handle->cl_ctlr_ctxt);
 TW_UINT32 status_reg;
 TW_INT32 rc = TW_CL_FALSE;

 tw_cli_dbg_printf(10, ctlr_handle, tw_osl_cur_func(), "entered");


 if (ctlr == ((void*)0))
  goto out;




 if (ctlr->reset_in_progress || !(ctlr->active))
  goto out;


 status_reg = TW_CLI_READ_STATUS_REGISTER(ctlr_handle);
 if (tw_cli_check_ctlr_state(ctlr, status_reg))
  goto out;


 if (status_reg & TWA_STATUS_HOST_INTERRUPT) {
  tw_cli_dbg_printf(6, ctlr_handle, tw_osl_cur_func(),
   "Host interrupt");
  TW_CLI_WRITE_CONTROL_REGISTER(ctlr_handle,
   TWA_CONTROL_CLEAR_HOST_INTERRUPT);
 }
 if (status_reg & TWA_STATUS_ATTENTION_INTERRUPT) {
  tw_cli_dbg_printf(6, ctlr_handle, tw_osl_cur_func(),
   "Attention interrupt");
  rc |= TW_CL_TRUE;
  tw_cli_process_attn_intr(ctlr);
  TW_CLI_WRITE_CONTROL_REGISTER(ctlr_handle,
   TWA_CONTROL_CLEAR_ATTENTION_INTERRUPT);
 }
 if (status_reg & TWA_STATUS_COMMAND_INTERRUPT) {
  tw_cli_dbg_printf(6, ctlr_handle, tw_osl_cur_func(),
   "Command interrupt");
  rc |= TW_CL_TRUE;
  tw_cli_process_cmd_intr(ctlr);
  if ((TW_CL_Q_FIRST_ITEM(&(ctlr->req_q_head[TW_CLI_PENDING_Q]))) == TW_CL_NULL)
   TW_CLI_WRITE_CONTROL_REGISTER(ctlr_handle,
    TWA_CONTROL_MASK_COMMAND_INTERRUPT);
 }
 if (status_reg & TWA_STATUS_RESPONSE_INTERRUPT) {
  tw_cli_dbg_printf(10, ctlr_handle, tw_osl_cur_func(),
   "Response interrupt");
  rc |= TW_CL_TRUE;
  tw_cli_process_resp_intr(ctlr);
 }
out:
 return(rc);
}
