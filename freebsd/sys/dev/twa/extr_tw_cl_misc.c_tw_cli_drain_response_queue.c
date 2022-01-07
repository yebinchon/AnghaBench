
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_ctlr_context {int ctlr_handle; } ;
typedef int TW_UINT32 ;
typedef int TW_INT32 ;


 int TWA_STATUS_RESPONSE_QUEUE_EMPTY ;
 int TW_CLI_READ_RESPONSE_QUEUE (int ) ;
 int TW_CLI_READ_STATUS_REGISTER (int ) ;
 int TW_OSL_ESUCCESS ;
 int tw_cli_dbg_printf (int,int ,int ,char*) ;
 int tw_osl_cur_func () ;

TW_INT32
tw_cli_drain_response_queue(struct tw_cli_ctlr_context *ctlr)
{
 TW_UINT32 resp;
 TW_UINT32 status_reg;

 tw_cli_dbg_printf(4, ctlr->ctlr_handle, tw_osl_cur_func(), "entered");

 for (;;) {
  status_reg = TW_CLI_READ_STATUS_REGISTER(ctlr->ctlr_handle);

  if (status_reg & TWA_STATUS_RESPONSE_QUEUE_EMPTY)
   return(TW_OSL_ESUCCESS);

  resp = TW_CLI_READ_RESPONSE_QUEUE(ctlr->ctlr_handle);
 }
}
