
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_req_context {int flags; int req_handle; int (* tw_osl_callback ) (int ) ;void* status; struct tw_cli_req_context* orig_req; int (* tw_cli_callback ) (struct tw_cli_req_context*) ;void* error_code; } ;
struct tw_cli_ctlr_context {int ctlr_handle; } ;
struct tw_cl_req_packet {int flags; int req_handle; int (* tw_osl_callback ) (int ) ;void* status; struct tw_cl_req_packet* orig_req; int (* tw_cli_callback ) (struct tw_cli_req_context*) ;void* error_code; } ;
typedef int TW_VOID ;


 int TW_CLI_FREE_Q ;
 int TW_CLI_PENDING_Q ;
 int TW_CLI_REQ_FLAGS_INTERNAL ;
 int TW_CLI_REQ_FLAGS_PASSTHRU ;
 int TW_CLI_RESET_Q ;
 void* TW_CL_ERR_REQ_BUS_RESET ;
 struct tw_cli_req_context* TW_CL_NULL ;
 int stub1 (struct tw_cli_req_context*) ;
 int stub2 (int ) ;
 int tw_cli_dbg_printf (int,int ,int ,char*) ;
 int tw_cli_req_q_insert_tail (struct tw_cli_req_context*,int ) ;
 struct tw_cli_req_context* tw_cli_req_q_remove_head (struct tw_cli_ctlr_context*,int ) ;
 int tw_osl_cur_func () ;
 int tw_osl_untimeout (int ) ;

TW_VOID
tw_cli_drain_pending_queue(struct tw_cli_ctlr_context *ctlr)
{
 struct tw_cli_req_context *req;
 struct tw_cl_req_packet *req_pkt;

 tw_cli_dbg_printf(3, ctlr->ctlr_handle, tw_osl_cur_func(), "entered");




 while ((req = tw_cli_req_q_remove_head(ctlr, TW_CLI_PENDING_Q)) !=
  TW_CL_NULL) {
  if (req->flags & TW_CLI_REQ_FLAGS_INTERNAL) {
   req->error_code = TW_CL_ERR_REQ_BUS_RESET;
   if (req->tw_cli_callback)
    req->tw_cli_callback(req);
  } else if (req->flags & TW_CLI_REQ_FLAGS_PASSTHRU) {

   if ((req_pkt = req->orig_req) != TW_CL_NULL) {
    req_pkt->status = TW_CL_ERR_REQ_BUS_RESET;

    if (req_pkt->tw_osl_callback)
     req_pkt->tw_osl_callback(req->req_handle);
   }
   tw_cli_req_q_insert_tail(req, TW_CLI_FREE_Q);
  } else {

   tw_osl_untimeout(req->req_handle);
   tw_cli_req_q_insert_tail(req, TW_CLI_RESET_Q);
  }
 }
}
