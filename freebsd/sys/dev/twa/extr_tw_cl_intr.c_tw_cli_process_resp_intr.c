
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_req_context {scalar_t__ state; } ;
struct tw_cli_ctlr_context {int ctlr_handle; struct tw_cli_req_context* req_ctxt_buf; } ;
typedef int TW_UINT32 ;
typedef int TW_INT32 ;


 size_t GET_RESP_ID (int) ;
 int TWA_STATUS_RESPONSE_QUEUE_EMPTY ;
 int TW_CLI_BUSY_Q ;
 int TW_CLI_COMPLETE_Q ;
 int TW_CLI_READ_RESPONSE_QUEUE (int ) ;
 int TW_CLI_READ_STATUS_REGISTER (int ) ;
 scalar_t__ TW_CLI_REQ_STATE_BUSY ;
 scalar_t__ TW_CLI_REQ_STATE_COMPLETE ;
 int TW_CL_FALSE ;
 int TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 int tw_cl_create_event (int ,int ,int ,int,int,int ,char*,char*,struct tw_cli_req_context*,scalar_t__) ;
 int tw_cl_print_ctlr_stats (int ) ;
 int tw_cli_check_ctlr_state (struct tw_cli_ctlr_context*,int) ;
 int tw_cli_dbg_printf (int,int ,int ,char*) ;
 int tw_cli_process_complete_queue (struct tw_cli_ctlr_context*) ;
 int tw_cli_req_q_insert_tail (struct tw_cli_req_context*,int ) ;
 int tw_cli_req_q_remove_item (struct tw_cli_req_context*,int ) ;
 int tw_osl_cur_func () ;

TW_INT32
tw_cli_process_resp_intr(struct tw_cli_ctlr_context *ctlr)
{
 TW_UINT32 resp;
 struct tw_cli_req_context *req;
 TW_INT32 error;
 TW_UINT32 status_reg;

 tw_cli_dbg_printf(10, ctlr->ctlr_handle, tw_osl_cur_func(), "entered");

 for (;;) {
  status_reg = TW_CLI_READ_STATUS_REGISTER(ctlr->ctlr_handle);
  if ((error = tw_cli_check_ctlr_state(ctlr, status_reg)))
   break;
  if (status_reg & TWA_STATUS_RESPONSE_QUEUE_EMPTY) {
   tw_cli_dbg_printf(7, ctlr->ctlr_handle,
    tw_osl_cur_func(), "Response queue empty");
   break;
  }


  resp = TW_CLI_READ_RESPONSE_QUEUE(ctlr->ctlr_handle);
  {
   req = &(ctlr->req_ctxt_buf[GET_RESP_ID(resp)]);
  }

  if (req->state != TW_CLI_REQ_STATE_BUSY) {
   tw_cl_create_event(ctlr->ctlr_handle, TW_CL_FALSE,
    TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
    0x1201, 0x1, TW_CL_SEVERITY_ERROR_STRING,
    "Unposted command completed!!",
    "request = %p, status = %d",
    req, req->state);



   continue;
  }





  tw_cli_req_q_remove_item(req, TW_CLI_BUSY_Q);
  req->state = TW_CLI_REQ_STATE_COMPLETE;
  tw_cli_req_q_insert_tail(req, TW_CLI_COMPLETE_Q);

 }


 tw_cli_process_complete_queue(ctlr);

 return(error);
}
