
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_EECD ;
 int E1000_EECD_ABORT ;
 int E1000_EECD_BLOCKED ;
 int E1000_EECD_ERROR_CLR ;
 int E1000_EECD_TIMEOUT ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 int E1000_SWFW_EEP_SM ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ e1000_82580 ;
 scalar_t__ e1000_acquire_nvm_generic (struct e1000_hw*) ;
 scalar_t__ e1000_acquire_swfw_sync (struct e1000_hw*,int ) ;
 scalar_t__ e1000_i350 ;
 int e1000_release_swfw_sync (struct e1000_hw*,int ) ;

__attribute__((used)) static s32 e1000_acquire_nvm_82575(struct e1000_hw *hw)
{
 s32 ret_val = E1000_SUCCESS;

 DEBUGFUNC("e1000_acquire_nvm_82575");

 ret_val = e1000_acquire_swfw_sync(hw, E1000_SWFW_EEP_SM);
 if (ret_val)
  goto out;





 if (hw->mac.type == e1000_i350) {
  u32 eecd = E1000_READ_REG(hw, E1000_EECD);
  if (eecd & (E1000_EECD_BLOCKED | E1000_EECD_ABORT |
      E1000_EECD_TIMEOUT)) {

   E1000_WRITE_REG(hw, E1000_EECD, eecd |
     E1000_EECD_ERROR_CLR);
   DEBUGOUT("Nvm bit banging access error detected and cleared.\n");
  }
 }

 if (hw->mac.type == e1000_82580) {
  u32 eecd = E1000_READ_REG(hw, E1000_EECD);
  if (eecd & E1000_EECD_BLOCKED) {

   E1000_WRITE_REG(hw, E1000_EECD, eecd |
     E1000_EECD_BLOCKED);
   DEBUGOUT("Nvm bit banging access error detected and cleared.\n");
  }
 }

 ret_val = e1000_acquire_nvm_generic(hw);
 if (ret_val)
  e1000_release_swfw_sync(hw, E1000_SWFW_EEP_SM);

out:
 return ret_val;
}
