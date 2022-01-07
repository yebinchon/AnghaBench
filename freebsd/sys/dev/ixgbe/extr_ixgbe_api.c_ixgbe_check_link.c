
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int check_link; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef int s32 ;
typedef int ixgbe_link_speed ;


 int IXGBE_NOT_IMPLEMENTED ;
 int ixgbe_call_func (struct ixgbe_hw*,int ,struct ixgbe_hw*,int ) ;

s32 ixgbe_check_link(struct ixgbe_hw *hw, ixgbe_link_speed *speed,
       bool *link_up, bool link_up_wait_to_complete)
{
 return ixgbe_call_func(hw, hw->mac.ops.check_link, (hw, speed,
          link_up, link_up_wait_to_complete),
          IXGBE_NOT_IMPLEMENTED);
}
