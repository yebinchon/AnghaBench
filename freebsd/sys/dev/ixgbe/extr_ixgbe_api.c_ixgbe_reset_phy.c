
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reset; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IXGBE_ERR_PHY ;
 int IXGBE_NOT_IMPLEMENTED ;
 scalar_t__ IXGBE_SUCCESS ;
 scalar_t__ ixgbe_call_func (struct ixgbe_hw*,int ,struct ixgbe_hw*,int ) ;
 scalar_t__ ixgbe_identify_phy (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_phy_unknown ;

s32 ixgbe_reset_phy(struct ixgbe_hw *hw)
{
 s32 status = IXGBE_SUCCESS;

 if (hw->phy.type == ixgbe_phy_unknown) {
  if (ixgbe_identify_phy(hw) != IXGBE_SUCCESS)
   status = IXGBE_ERR_PHY;
 }

 if (status == IXGBE_SUCCESS) {
  status = ixgbe_call_func(hw, hw->phy.ops.reset, (hw),
      IXGBE_NOT_IMPLEMENTED);
 }
 return status;
}
