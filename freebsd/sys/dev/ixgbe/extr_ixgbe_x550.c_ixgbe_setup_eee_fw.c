
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* setup_link ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; scalar_t__ eee_speeds_advertised; scalar_t__ eee_speeds_supported; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef int s32 ;


 int IXGBE_SUCCESS ;
 int stub1 (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_setup_eee_fw(struct ixgbe_hw *hw, bool enable_eee)
{
 if (!!hw->phy.eee_speeds_advertised == enable_eee)
  return IXGBE_SUCCESS;
 if (enable_eee)
  hw->phy.eee_speeds_advertised = hw->phy.eee_speeds_supported;
 else
  hw->phy.eee_speeds_advertised = 0;
 return hw->phy.ops.setup_link(hw);
}
