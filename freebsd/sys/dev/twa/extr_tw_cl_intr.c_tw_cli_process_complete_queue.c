
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_req_context {int (* tw_cli_callback ) (struct tw_cli_req_context*) ;} ;
struct tw_cli_ctlr_context {int ctlr_handle; } ;
typedef int TW_VOID ;


 int TW_CLI_COMPLETE_Q ;
 struct tw_cli_req_context* TW_CL_NULL ;
 int stub1 (struct tw_cli_req_context*) ;
 int tw_cli_dbg_printf (int,int ,int ,char*) ;
 struct tw_cli_req_context* tw_cli_req_q_remove_head (struct tw_cli_ctlr_context*,int ) ;
 int tw_osl_cur_func () ;

TW_VOID
tw_cli_process_complete_queue(struct tw_cli_ctlr_context *ctlr)
{
 struct tw_cli_req_context *req;

 tw_cli_dbg_printf(10, ctlr->ctlr_handle, tw_osl_cur_func(), "entered");




 while ((req = tw_cli_req_q_remove_head(ctlr, TW_CLI_COMPLETE_Q)) !=
  TW_CL_NULL) {

  if (req->tw_cli_callback)
   req->tw_cli_callback(req);
 }
}
