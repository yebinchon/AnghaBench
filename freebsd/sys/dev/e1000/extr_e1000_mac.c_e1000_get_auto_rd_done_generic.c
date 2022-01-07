
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ AUTO_READ_DONE_TIMEOUT ;
 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_EECD ;
 int E1000_EECD_AUTO_RD ;
 scalar_t__ E1000_ERR_RESET ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 int msec_delay (int) ;

s32 e1000_get_auto_rd_done_generic(struct e1000_hw *hw)
{
 s32 i = 0;

 DEBUGFUNC("e1000_get_auto_rd_done_generic");

 while (i < AUTO_READ_DONE_TIMEOUT) {
  if (E1000_READ_REG(hw, E1000_EECD) & E1000_EECD_AUTO_RD)
   break;
  msec_delay(1);
  i++;
 }

 if (i == AUTO_READ_DONE_TIMEOUT) {
  DEBUGOUT("Auto read by HW from NVM has not completed.\n");
  return -E1000_ERR_RESET;
 }

 return E1000_SUCCESS;
}
