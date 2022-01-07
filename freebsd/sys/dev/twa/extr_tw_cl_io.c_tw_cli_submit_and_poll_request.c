
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_req_context {int error_code; scalar_t__ state; scalar_t__ data; struct tw_cli_ctlr_context* ctlr; } ;
struct tw_cli_ctlr_context {int internal_req_busy; int ctlr_handle; int * req_q_head; } ;
typedef scalar_t__ TW_UINT32 ;
typedef scalar_t__ TW_TIME ;
typedef int TW_INT32 ;


 int TWA_CONTROL_MASK_COMMAND_INTERRUPT ;
 int TW_CLI_FREE_Q ;
 size_t TW_CLI_PENDING_Q ;
 scalar_t__ TW_CLI_REQ_STATE_BUSY ;
 scalar_t__ TW_CLI_REQ_STATE_COMPLETE ;
 scalar_t__ TW_CLI_REQ_STATE_PENDING ;
 int TW_CLI_WRITE_CONTROL_REGISTER (int ,int ) ;
 int TW_CL_FALSE ;
 int TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ;
 scalar_t__ TW_CL_NULL ;
 scalar_t__ TW_CL_Q_FIRST_ITEM (int *) ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 int TW_OSL_ETIMEDOUT ;
 int tw_cl_create_event (int ,int ,int ,int,int,int ,char*,char*,...) ;
 int tw_cli_dbg_printf (int,int ,int ,char*) ;
 int tw_cli_process_resp_intr (struct tw_cli_ctlr_context*) ;
 int tw_cli_req_q_insert_tail (struct tw_cli_req_context*,int ) ;
 int tw_cli_req_q_remove_item (struct tw_cli_req_context*,size_t) ;
 int tw_cli_submit_cmd (struct tw_cli_req_context*) ;
 int tw_osl_cur_func () ;
 scalar_t__ tw_osl_get_local_time () ;

TW_INT32
tw_cli_submit_and_poll_request(struct tw_cli_req_context *req,
 TW_UINT32 timeout)
{
 struct tw_cli_ctlr_context *ctlr = req->ctlr;
 TW_TIME end_time;
 TW_INT32 error;

 tw_cli_dbg_printf(4, ctlr->ctlr_handle, tw_osl_cur_func(), "entered");





 if ((error = tw_cli_submit_cmd(req))) {
  tw_cl_create_event(ctlr->ctlr_handle, TW_CL_FALSE,
   TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
   0x1103, 0x1, TW_CL_SEVERITY_ERROR_STRING,
   "Failed to start internal request",
   "error = %d", error);
  return(error);
 }





 end_time = tw_osl_get_local_time() + timeout;
 do {
  if ((error = req->error_code))





   return(error);


  tw_cli_process_resp_intr(ctlr);

  if ((req->state != TW_CLI_REQ_STATE_BUSY) &&
   (req->state != TW_CLI_REQ_STATE_PENDING))
   return(req->state != TW_CLI_REQ_STATE_COMPLETE);
 } while (tw_osl_get_local_time() <= end_time);


 tw_cl_create_event(ctlr->ctlr_handle, TW_CL_FALSE,
  TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
  0x1104, 0x1, TW_CL_SEVERITY_ERROR_STRING,
  "Internal request timed out",
  "request = %p", req);
 if (req->state == TW_CLI_REQ_STATE_PENDING) {
  tw_cli_dbg_printf(3, ctlr->ctlr_handle, tw_osl_cur_func(),
   "Removing request from pending queue");






  tw_cli_req_q_remove_item(req, TW_CLI_PENDING_Q);
  if ((TW_CL_Q_FIRST_ITEM(&(ctlr->req_q_head[TW_CLI_PENDING_Q]))) == TW_CL_NULL)
   TW_CLI_WRITE_CONTROL_REGISTER(ctlr->ctlr_handle,
    TWA_CONTROL_MASK_COMMAND_INTERRUPT);
  if (req->data)
   ctlr->internal_req_busy = TW_CL_FALSE;
  tw_cli_req_q_insert_tail(req, TW_CLI_FREE_Q);
 }

 return(TW_OSL_ETIMEDOUT);
}
