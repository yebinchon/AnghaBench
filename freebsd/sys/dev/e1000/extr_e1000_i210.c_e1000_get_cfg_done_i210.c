
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_EEMNGCTL_I210 ;
 int E1000_NVM_CFG_DONE_PORT_0 ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 scalar_t__ PHY_CFG_TIMEOUT ;
 int msec_delay (int) ;

__attribute__((used)) static s32 e1000_get_cfg_done_i210(struct e1000_hw *hw)
{
 s32 timeout = PHY_CFG_TIMEOUT;
 u32 mask = E1000_NVM_CFG_DONE_PORT_0;

 DEBUGFUNC("e1000_get_cfg_done_i210");

 while (timeout) {
  if (E1000_READ_REG(hw, E1000_EEMNGCTL_I210) & mask)
   break;
  msec_delay(1);
  timeout--;
 }
 if (!timeout)
  DEBUGOUT("MNG configuration cycle has not completed.\n");

 return E1000_SUCCESS;
}
