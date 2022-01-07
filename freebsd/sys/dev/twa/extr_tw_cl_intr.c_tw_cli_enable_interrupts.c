
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_ctlr_context {int ctlr_handle; int interrupts_enabled; } ;
typedef int TW_VOID ;


 int TWA_CONTROL_CLEAR_ATTENTION_INTERRUPT ;
 int TWA_CONTROL_ENABLE_INTERRUPTS ;
 int TWA_CONTROL_UNMASK_RESPONSE_INTERRUPT ;
 int TW_CLI_WRITE_CONTROL_REGISTER (int ,int) ;
 int TW_CL_TRUE ;
 int tw_cli_dbg_printf (int,int ,int ,char*) ;
 int tw_osl_cur_func () ;

TW_VOID
tw_cli_enable_interrupts(struct tw_cli_ctlr_context *ctlr)
{
 tw_cli_dbg_printf(3, ctlr->ctlr_handle, tw_osl_cur_func(), "entered");

 ctlr->interrupts_enabled = TW_CL_TRUE;
 TW_CLI_WRITE_CONTROL_REGISTER(ctlr->ctlr_handle,
  TWA_CONTROL_CLEAR_ATTENTION_INTERRUPT |
  TWA_CONTROL_UNMASK_RESPONSE_INTERRUPT |
  TWA_CONTROL_ENABLE_INTERRUPTS);
}
