
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_ctlr_context {int ctlr_handle; } ;
typedef scalar_t__ TW_UINT32 ;
typedef scalar_t__ TW_TIME ;
typedef int TW_INT32 ;


 scalar_t__ TW_CLI_READ_STATUS_REGISTER (int ) ;
 int TW_OSL_ESUCCESS ;
 int TW_OSL_ETIMEDOUT ;
 int tw_cli_dbg_printf (int,int ,int ,char*) ;
 int tw_osl_cur_func () ;
 int tw_osl_delay (int) ;
 scalar_t__ tw_osl_get_local_time () ;

TW_INT32
tw_cli_poll_status(struct tw_cli_ctlr_context *ctlr, TW_UINT32 status,
 TW_UINT32 timeout)
{
 TW_TIME end_time;
 TW_UINT32 status_reg;

 tw_cli_dbg_printf(4, ctlr->ctlr_handle, tw_osl_cur_func(), "entered");

 end_time = tw_osl_get_local_time() + timeout;
 do {
  status_reg = TW_CLI_READ_STATUS_REGISTER(ctlr->ctlr_handle);
  if ((status_reg & status) == status)

   return(TW_OSL_ESUCCESS);

  tw_osl_delay(1000);
 } while (tw_osl_get_local_time() <= end_time);

 return(TW_OSL_ETIMEDOUT);
}
