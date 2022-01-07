
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_EECD ;
 int E1000_EECD_GNT ;
 int E1000_EECD_REQ ;
 scalar_t__ E1000_ERR_NVM ;
 scalar_t__ E1000_NVM_GRANT_ATTEMPTS ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int usec_delay (int) ;

s32 e1000_acquire_nvm_generic(struct e1000_hw *hw)
{
 u32 eecd = E1000_READ_REG(hw, E1000_EECD);
 s32 timeout = E1000_NVM_GRANT_ATTEMPTS;

 DEBUGFUNC("e1000_acquire_nvm_generic");

 E1000_WRITE_REG(hw, E1000_EECD, eecd | E1000_EECD_REQ);
 eecd = E1000_READ_REG(hw, E1000_EECD);

 while (timeout) {
  if (eecd & E1000_EECD_GNT)
   break;
  usec_delay(5);
  eecd = E1000_READ_REG(hw, E1000_EECD);
  timeout--;
 }

 if (!timeout) {
  eecd &= ~E1000_EECD_REQ;
  E1000_WRITE_REG(hw, E1000_EECD, eecd);
  DEBUGOUT("Could not acquire NVM grant\n");
  return -E1000_ERR_NVM;
 }

 return E1000_SUCCESS;
}
