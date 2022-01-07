
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int identify; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef int s32 ;


 int IXGBE_NOT_IMPLEMENTED ;
 int IXGBE_SUCCESS ;
 int ixgbe_call_func (struct ixgbe_hw*,int ,struct ixgbe_hw*,int ) ;
 scalar_t__ ixgbe_phy_unknown ;

s32 ixgbe_identify_phy(struct ixgbe_hw *hw)
{
 s32 status = IXGBE_SUCCESS;

 if (hw->phy.type == ixgbe_phy_unknown) {
  status = ixgbe_call_func(hw, hw->phy.ops.identify, (hw),
      IXGBE_NOT_IMPLEMENTED);
 }

 return status;
}
