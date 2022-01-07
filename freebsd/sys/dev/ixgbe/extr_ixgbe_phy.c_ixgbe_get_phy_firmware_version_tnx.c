
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* read_reg ) (struct ixgbe_hw*,int ,int ,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE ;
 int TNX_FW_REV ;
 int stub1 (struct ixgbe_hw*,int ,int ,int *) ;

s32 ixgbe_get_phy_firmware_version_tnx(struct ixgbe_hw *hw,
           u16 *firmware_version)
{
 s32 status;

 DEBUGFUNC("ixgbe_get_phy_firmware_version_tnx");

 status = hw->phy.ops.read_reg(hw, TNX_FW_REV,
          IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
          firmware_version);

 return status;
}
