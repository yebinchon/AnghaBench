
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int bypass_valid_rd; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;


 int IXGBE_NOT_IMPLEMENTED ;
 int ixgbe_call_func (struct ixgbe_hw*,int ,int ,int ) ;

bool ixgbe_bypass_valid_rd(struct ixgbe_hw *hw, u32 in_reg, u32 out_reg)
{
 return ixgbe_call_func(hw, hw->mac.ops.bypass_valid_rd,
          (in_reg, out_reg), IXGBE_NOT_IMPLEMENTED);
}
