
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tw_cli_req_context {int (* tw_cli_callback ) (struct tw_cli_req_context*) ;int state; scalar_t__ error_code; TYPE_3__* cmd_pkt; } ;
struct tw_cli_ctlr_context {int ctlr_handle; } ;
struct TYPE_4__ {int res__opcode; } ;
struct TYPE_5__ {TYPE_1__ cmd_pkt_9k; } ;
struct TYPE_6__ {TYPE_2__ command; } ;
typedef scalar_t__ TW_INT32 ;


 int GET_OPCODE (int ) ;
 int TW_CLI_PENDING_Q ;
 int TW_CLI_REQ_STATE_COMPLETE ;
 int TW_CLI_REQ_STATE_PENDING ;
 int TW_CL_FALSE ;
 int TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR ;
 struct tw_cli_req_context* TW_CL_NULL ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 scalar_t__ TW_OSL_EBUSY ;
 scalar_t__ TW_OSL_ESUCCESS ;
 int stub1 (struct tw_cli_req_context*) ;
 int tw_cl_create_event (int ,int ,int ,int,int,int ,char*,char*,struct tw_cli_req_context*,int ,scalar_t__) ;
 int tw_cli_dbg_printf (int,int ,int ,char*) ;
 int tw_cli_req_q_insert_head (struct tw_cli_req_context*,int ) ;
 struct tw_cli_req_context* tw_cli_req_q_remove_head (struct tw_cli_ctlr_context*,int ) ;
 scalar_t__ tw_cli_submit_cmd (struct tw_cli_req_context*) ;
 int tw_osl_cur_func () ;

TW_INT32
tw_cli_submit_pending_queue(struct tw_cli_ctlr_context *ctlr)
{
 struct tw_cli_req_context *req;
 TW_INT32 error = TW_OSL_ESUCCESS;

 tw_cli_dbg_printf(3, ctlr->ctlr_handle, tw_osl_cur_func(), "entered");




 while ((req = tw_cli_req_q_remove_head(ctlr, TW_CLI_PENDING_Q)) !=
  TW_CL_NULL) {
  if ((error = tw_cli_submit_cmd(req))) {
   if (error == TW_OSL_EBUSY) {
    tw_cli_dbg_printf(2, ctlr->ctlr_handle,
     tw_osl_cur_func(),
     "Requeueing pending request");
    req->state = TW_CLI_REQ_STATE_PENDING;





    tw_cli_req_q_insert_head(req, TW_CLI_PENDING_Q);
    break;
   } else {
    tw_cl_create_event(ctlr->ctlr_handle,
     TW_CL_FALSE,
     TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR,
     0x1202, 0x1,
     TW_CL_SEVERITY_ERROR_STRING,
     "Could not start request "
     "in pending queue",
     "request = %p, opcode = 0x%x, "
     "error = %d", req,
     GET_OPCODE(req->cmd_pkt->
      command.cmd_pkt_9k.res__opcode),
     error);
    req->error_code = error;
    req->state = TW_CLI_REQ_STATE_COMPLETE;
    if (req->tw_cli_callback)
     req->tw_cli_callback(req);
    error = TW_OSL_ESUCCESS;
   }
  }
 }
 return(error);
}
