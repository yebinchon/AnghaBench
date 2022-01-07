
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* set_rate_select_speed ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef int ixgbe_link_speed ;


 int stub1 (struct ixgbe_hw*,int ) ;

void ixgbe_set_rate_select_speed(struct ixgbe_hw *hw, ixgbe_link_speed speed)
{
 if (hw->mac.ops.set_rate_select_speed)
  hw->mac.ops.set_rate_select_speed(hw, speed);
}
