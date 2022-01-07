
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int read_iosf_sb_reg; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef int s32 ;


 int IXGBE_NOT_IMPLEMENTED ;
 int ixgbe_call_func (struct ixgbe_hw*,int ,struct ixgbe_hw*,int ) ;

s32 ixgbe_read_iosf_sb_reg(struct ixgbe_hw *hw, u32 reg_addr,
      u32 device_type, u32 *phy_data)
{
 return ixgbe_call_func(hw, hw->mac.ops.read_iosf_sb_reg, (hw, reg_addr,
          device_type, phy_data), IXGBE_NOT_IMPLEMENTED);
}
