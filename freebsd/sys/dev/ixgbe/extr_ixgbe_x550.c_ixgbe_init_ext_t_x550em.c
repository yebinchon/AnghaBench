
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_4__ {scalar_t__ (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;scalar_t__ (* write_reg ) (struct ixgbe_hw*,int ,int ,int) ;} ;
struct TYPE_3__ {TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;


 int IXGBE_MDIO_GLOBAL_RES_PR_10 ;
 int IXGBE_MDIO_PMA_PMD_DEV_TYPE ;
 int IXGBE_MDIO_POWER_UP_STALL ;
 int IXGBE_MDIO_TX_VENDOR_ALARMS_3 ;
 int IXGBE_MDIO_TX_VENDOR_ALARMS_3_RST_MASK ;
 int IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE ;
 scalar_t__ IXGBE_SUCCESS ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int ,int ,int) ;

s32 ixgbe_init_ext_t_x550em(struct ixgbe_hw *hw)
{
 u32 status;
 u16 reg;

 status = hw->phy.ops.read_reg(hw,
          IXGBE_MDIO_TX_VENDOR_ALARMS_3,
          IXGBE_MDIO_PMA_PMD_DEV_TYPE,
          &reg);

 if (status != IXGBE_SUCCESS)
  return status;




 if (reg & IXGBE_MDIO_TX_VENDOR_ALARMS_3_RST_MASK) {
  status = hw->phy.ops.read_reg(hw,
     IXGBE_MDIO_GLOBAL_RES_PR_10,
     IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
     &reg);

  if (status != IXGBE_SUCCESS)
   return status;

  reg &= ~IXGBE_MDIO_POWER_UP_STALL;

  status = hw->phy.ops.write_reg(hw,
     IXGBE_MDIO_GLOBAL_RES_PR_10,
     IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
     reg);

  if (status != IXGBE_SUCCESS)
   return status;
 }

 return status;
}
