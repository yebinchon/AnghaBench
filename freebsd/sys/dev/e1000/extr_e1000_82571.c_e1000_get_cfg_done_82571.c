
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_EEMNGCTL ;
 scalar_t__ E1000_ERR_RESET ;
 int E1000_NVM_CFG_DONE_PORT_0 ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 scalar_t__ PHY_CFG_TIMEOUT ;
 int msec_delay (int) ;

__attribute__((used)) static s32 e1000_get_cfg_done_82571(struct e1000_hw *hw)
{
 s32 timeout = PHY_CFG_TIMEOUT;

 DEBUGFUNC("e1000_get_cfg_done_82571");

 while (timeout) {
  if (E1000_READ_REG(hw, E1000_EEMNGCTL) &
      E1000_NVM_CFG_DONE_PORT_0)
   break;
  msec_delay(1);
  timeout--;
 }
 if (!timeout) {
  DEBUGOUT("MNG configuration cycle has not completed.\n");
  return -E1000_ERR_RESET;
 }

 return E1000_SUCCESS;
}
