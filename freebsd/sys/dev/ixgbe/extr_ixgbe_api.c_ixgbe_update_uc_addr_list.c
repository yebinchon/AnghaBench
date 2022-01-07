
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int update_uc_addr_list; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef int s32 ;
typedef int ixgbe_mc_addr_itr ;


 int IXGBE_NOT_IMPLEMENTED ;
 int ixgbe_call_func (struct ixgbe_hw*,int ,struct ixgbe_hw*,int ) ;

s32 ixgbe_update_uc_addr_list(struct ixgbe_hw *hw, u8 *addr_list,
         u32 addr_count, ixgbe_mc_addr_itr func)
{
 return ixgbe_call_func(hw, hw->mac.ops.update_uc_addr_list, (hw,
          addr_list, addr_count, func),
          IXGBE_NOT_IMPLEMENTED);
}
