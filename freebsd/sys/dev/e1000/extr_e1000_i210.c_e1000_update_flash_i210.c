
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_EECD ;
 int E1000_EECD_FLUPD_I210 ;
 int E1000_ERR_NVM ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int e1000_pool_flash_update_done_i210 (struct e1000_hw*) ;

s32 e1000_update_flash_i210(struct e1000_hw *hw)
{
 s32 ret_val;
 u32 flup;

 DEBUGFUNC("e1000_update_flash_i210");

 ret_val = e1000_pool_flash_update_done_i210(hw);
 if (ret_val == -E1000_ERR_NVM) {
  DEBUGOUT("Flash update time out\n");
  goto out;
 }

 flup = E1000_READ_REG(hw, E1000_EECD) | E1000_EECD_FLUPD_I210;
 E1000_WRITE_REG(hw, E1000_EECD, flup);

 ret_val = e1000_pool_flash_update_done_i210(hw);
 if (ret_val == E1000_SUCCESS)
  DEBUGOUT("Flash update complete\n");
 else
  DEBUGOUT("Flash update time out\n");

out:
 return ret_val;
}
