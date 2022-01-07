
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* get_mac_addr ) (struct ixgbe_hw*,int ) ;int (* start_hw ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {int addr; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef int s32 ;


 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*,int ) ;

s32 ixgbe_init_hw_vf(struct ixgbe_hw *hw)
{
 s32 status = hw->mac.ops.start_hw(hw);

 hw->mac.ops.get_mac_addr(hw, hw->mac.addr);

 return status;
}
