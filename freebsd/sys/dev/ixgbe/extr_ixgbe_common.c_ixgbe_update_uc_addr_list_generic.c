
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ overflow_promisc; scalar_t__ rar_used_count; int user_set_promisc; } ;
struct ixgbe_hw {TYPE_1__ addr_ctrl; } ;
typedef int s32 ;
typedef int * (* ixgbe_mc_addr_itr ) (struct ixgbe_hw*,int **,scalar_t__*) ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,scalar_t__) ;
 int IXGBE_FCTRL ;
 scalar_t__ IXGBE_FCTRL_UPE ;
 int IXGBE_RAH (scalar_t__) ;
 int IXGBE_RAL (scalar_t__) ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 int ixgbe_add_uc_addr (struct ixgbe_hw*,int *,scalar_t__) ;

s32 ixgbe_update_uc_addr_list_generic(struct ixgbe_hw *hw, u8 *addr_list,
          u32 addr_count, ixgbe_mc_addr_itr next)
{
 u8 *addr;
 u32 i;
 u32 old_promisc_setting = hw->addr_ctrl.overflow_promisc;
 u32 uc_addr_in_use;
 u32 fctrl;
 u32 vmdq;

 DEBUGFUNC("ixgbe_update_uc_addr_list_generic");





 uc_addr_in_use = hw->addr_ctrl.rar_used_count - 1;
 hw->addr_ctrl.rar_used_count -= uc_addr_in_use;
 hw->addr_ctrl.overflow_promisc = 0;


 DEBUGOUT1("Clearing RAR[1-%d]\n", uc_addr_in_use+1);
 for (i = 0; i < uc_addr_in_use; i++) {
  IXGBE_WRITE_REG(hw, IXGBE_RAL(1+i), 0);
  IXGBE_WRITE_REG(hw, IXGBE_RAH(1+i), 0);
 }


 for (i = 0; i < addr_count; i++) {
  DEBUGOUT(" Adding the secondary addresses:\n");
  addr = next(hw, &addr_list, &vmdq);
  ixgbe_add_uc_addr(hw, addr, vmdq);
 }

 if (hw->addr_ctrl.overflow_promisc) {

  if (!old_promisc_setting && !hw->addr_ctrl.user_set_promisc) {
   DEBUGOUT(" Entering address overflow promisc mode\n");
   fctrl = IXGBE_READ_REG(hw, IXGBE_FCTRL);
   fctrl |= IXGBE_FCTRL_UPE;
   IXGBE_WRITE_REG(hw, IXGBE_FCTRL, fctrl);
  }
 } else {

  if (old_promisc_setting && !hw->addr_ctrl.user_set_promisc) {
   DEBUGOUT(" Leaving address overflow promisc mode\n");
   fctrl = IXGBE_READ_REG(hw, IXGBE_FCTRL);
   fctrl &= ~IXGBE_FCTRL_UPE;
   IXGBE_WRITE_REG(hw, IXGBE_FCTRL, fctrl);
  }
 }

 DEBUGOUT("ixgbe_update_uc_addr_list_generic Complete\n");
 return IXGBE_SUCCESS;
}
