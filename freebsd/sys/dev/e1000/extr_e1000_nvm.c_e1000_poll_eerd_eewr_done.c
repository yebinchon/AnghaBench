
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_EERD ;
 int E1000_EEWR ;
 int E1000_ERR_NVM ;
 int E1000_NVM_POLL_READ ;
 scalar_t__ E1000_NVM_RW_REG_DONE ;
 scalar_t__ E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int usec_delay (int) ;

s32 e1000_poll_eerd_eewr_done(struct e1000_hw *hw, int ee_reg)
{
 u32 attempts = 100000;
 u32 i, reg = 0;

 DEBUGFUNC("e1000_poll_eerd_eewr_done");

 for (i = 0; i < attempts; i++) {
  if (ee_reg == E1000_NVM_POLL_READ)
   reg = E1000_READ_REG(hw, E1000_EERD);
  else
   reg = E1000_READ_REG(hw, E1000_EEWR);

  if (reg & E1000_NVM_RW_REG_DONE)
   return E1000_SUCCESS;

  usec_delay(5);
 }

 return -E1000_ERR_NVM;
}
