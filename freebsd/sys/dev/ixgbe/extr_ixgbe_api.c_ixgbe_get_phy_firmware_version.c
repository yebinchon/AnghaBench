
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int get_firmware_version; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef int s32 ;


 int IXGBE_NOT_IMPLEMENTED ;
 int IXGBE_SUCCESS ;
 int ixgbe_call_func (struct ixgbe_hw*,int ,struct ixgbe_hw*,int ) ;

s32 ixgbe_get_phy_firmware_version(struct ixgbe_hw *hw, u16 *firmware_version)
{
 s32 status = IXGBE_SUCCESS;

 status = ixgbe_call_func(hw, hw->phy.ops.get_firmware_version,
     (hw, firmware_version),
     IXGBE_NOT_IMPLEMENTED);
 return status;
}
