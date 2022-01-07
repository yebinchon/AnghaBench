
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct TYPE_4__ {size_t mcft_size; int mc_filter_type; int * mta_shadow; } ;
struct TYPE_3__ {size_t num_mc_addrs; scalar_t__ mta_in_use; } ;
struct ixgbe_hw {TYPE_2__ mac; TYPE_1__ addr_ctrl; } ;
typedef int s32 ;
typedef int (* ixgbe_mc_addr_itr ) (struct ixgbe_hw*,int **,size_t*) ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int IXGBE_MCSTCTRL ;
 int IXGBE_MCSTCTRL_MFE ;
 int IXGBE_MTA (int ) ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int IXGBE_WRITE_REG_ARRAY (struct ixgbe_hw*,int ,size_t,int ) ;
 int ixgbe_set_mta (struct ixgbe_hw*,int ) ;
 int memset (int **,int ,int) ;

s32 ixgbe_update_mc_addr_list_generic(struct ixgbe_hw *hw, u8 *mc_addr_list,
          u32 mc_addr_count, ixgbe_mc_addr_itr next,
          bool clear)
{
 u32 i;
 u32 vmdq;

 DEBUGFUNC("ixgbe_update_mc_addr_list_generic");





 hw->addr_ctrl.num_mc_addrs = mc_addr_count;
 hw->addr_ctrl.mta_in_use = 0;


 if (clear) {
  DEBUGOUT(" Clearing MTA\n");
  memset(&hw->mac.mta_shadow, 0, sizeof(hw->mac.mta_shadow));
 }


 for (i = 0; i < mc_addr_count; i++) {
  DEBUGOUT(" Adding the multicast addresses:\n");
  ixgbe_set_mta(hw, next(hw, &mc_addr_list, &vmdq));
 }


 for (i = 0; i < hw->mac.mcft_size; i++)
  IXGBE_WRITE_REG_ARRAY(hw, IXGBE_MTA(0), i,
          hw->mac.mta_shadow[i]);

 if (hw->addr_ctrl.mta_in_use > 0)
  IXGBE_WRITE_REG(hw, IXGBE_MCSTCTRL,
    IXGBE_MCSTCTRL_MFE | hw->mac.mc_filter_type);

 DEBUGOUT("ixgbe_update_mc_addr_list_generic Complete\n");
 return IXGBE_SUCCESS;
}
