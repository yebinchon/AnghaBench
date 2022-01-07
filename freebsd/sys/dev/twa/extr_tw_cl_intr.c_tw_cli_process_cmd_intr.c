
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_ctlr_context {int ctlr_handle; } ;
typedef int TW_VOID ;


 int tw_cli_dbg_printf (int,int ,int ,char*) ;
 int tw_cli_submit_pending_queue (struct tw_cli_ctlr_context*) ;
 int tw_osl_cur_func () ;

TW_VOID
tw_cli_process_cmd_intr(struct tw_cli_ctlr_context *ctlr)
{
 tw_cli_dbg_printf(6, ctlr->ctlr_handle, tw_osl_cur_func(), "entered");


 tw_cli_submit_pending_queue(ctlr);






}
