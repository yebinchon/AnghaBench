
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int read_link_unlocked; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ link; } ;
typedef int s32 ;


 int IXGBE_NOT_IMPLEMENTED ;
 int ixgbe_call_func (struct ixgbe_hw*,int ,struct ixgbe_hw*,int ) ;

s32 ixgbe_read_link_unlocked(struct ixgbe_hw *hw, u8 addr, u16 reg, u16 *val)
{
 return ixgbe_call_func(hw, hw->link.ops.read_link_unlocked,
          (hw, addr, reg, val), IXGBE_NOT_IMPLEMENTED);
}
