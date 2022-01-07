
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int update_mc_addr_list; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef int s32 ;
typedef int ixgbe_mc_addr_itr ;


 int IXGBE_NOT_IMPLEMENTED ;
 int ixgbe_call_func (struct ixgbe_hw*,int ,struct ixgbe_hw*,int ) ;

s32 ixgbe_update_mc_addr_list(struct ixgbe_hw *hw, u8 *mc_addr_list,
         u32 mc_addr_count, ixgbe_mc_addr_itr func,
         bool clear)
{
 return ixgbe_call_func(hw, hw->mac.ops.update_mc_addr_list, (hw,
          mc_addr_list, mc_addr_count, func, clear),
          IXGBE_NOT_IMPLEMENTED);
}
