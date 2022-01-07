
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_EECD ;
 scalar_t__ E1000_EECD_FLUDONE_I210 ;
 int E1000_ERR_NVM ;
 scalar_t__ E1000_FLUDONE_ATTEMPTS ;
 scalar_t__ E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int usec_delay (int) ;

s32 e1000_pool_flash_update_done_i210(struct e1000_hw *hw)
{
 s32 ret_val = -E1000_ERR_NVM;
 u32 i, reg;

 DEBUGFUNC("e1000_pool_flash_update_done_i210");

 for (i = 0; i < E1000_FLUDONE_ATTEMPTS; i++) {
  reg = E1000_READ_REG(hw, E1000_EECD);
  if (reg & E1000_EECD_FLUDONE_I210) {
   ret_val = E1000_SUCCESS;
   break;
  }
  usec_delay(5);
 }

 return ret_val;
}
