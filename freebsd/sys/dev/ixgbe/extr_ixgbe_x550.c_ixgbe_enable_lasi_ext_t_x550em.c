
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_5__ {scalar_t__ (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;scalar_t__ (* write_reg ) (struct ixgbe_hw*,int ,int ,int) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int IXGBE_MDIO_AUTO_NEG_DEV_TYPE ;
 int IXGBE_MDIO_GLOBAL_ALARM_1_INT ;
 int IXGBE_MDIO_GLOBAL_AN_VEN_ALM_INT_EN ;
 int IXGBE_MDIO_GLOBAL_INT_CHIP_STD_MASK ;
 int IXGBE_MDIO_GLOBAL_INT_CHIP_VEN_MASK ;
 int IXGBE_MDIO_GLOBAL_INT_DEV_FAULT_EN ;
 int IXGBE_MDIO_GLOBAL_INT_HI_TEMP_EN ;
 int IXGBE_MDIO_GLOBAL_INT_MASK ;
 int IXGBE_MDIO_GLOBAL_VEN_ALM_INT_EN ;
 int IXGBE_MDIO_PMA_TX_VEN_LASI_INT_EN ;
 int IXGBE_MDIO_PMA_TX_VEN_LASI_INT_MASK ;
 int IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE ;
 scalar_t__ IXGBE_SUCCESS ;
 scalar_t__ ixgbe_get_lasi_ext_t_x550em (struct ixgbe_hw*,int*) ;
 scalar_t__ ixgbe_mac_X550EM_a ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ,int ,int) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub4 (struct ixgbe_hw*,int ,int ,int) ;
 scalar_t__ stub5 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub6 (struct ixgbe_hw*,int ,int ,int) ;
 scalar_t__ stub7 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub8 (struct ixgbe_hw*,int ,int ,int) ;

__attribute__((used)) static s32 ixgbe_enable_lasi_ext_t_x550em(struct ixgbe_hw *hw)
{
 u32 status;
 u16 reg;
 bool lsc;


 status = ixgbe_get_lasi_ext_t_x550em(hw, &lsc);
 if (hw->mac.type != ixgbe_mac_X550EM_a) {
  status = hw->phy.ops.read_reg(hw,
     IXGBE_MDIO_PMA_TX_VEN_LASI_INT_MASK,
     IXGBE_MDIO_AUTO_NEG_DEV_TYPE, &reg);

  if (status != IXGBE_SUCCESS)
   return status;

  reg |= IXGBE_MDIO_PMA_TX_VEN_LASI_INT_EN;

  status = hw->phy.ops.write_reg(hw,
     IXGBE_MDIO_PMA_TX_VEN_LASI_INT_MASK,
     IXGBE_MDIO_AUTO_NEG_DEV_TYPE, reg);

  if (status != IXGBE_SUCCESS)
   return status;
 }


 status = hw->phy.ops.read_reg(hw, IXGBE_MDIO_GLOBAL_INT_MASK,
          IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
          &reg);

 if (status != IXGBE_SUCCESS)
  return status;

 reg |= (IXGBE_MDIO_GLOBAL_INT_HI_TEMP_EN |
  IXGBE_MDIO_GLOBAL_INT_DEV_FAULT_EN);

 status = hw->phy.ops.write_reg(hw, IXGBE_MDIO_GLOBAL_INT_MASK,
           IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
           reg);

 if (status != IXGBE_SUCCESS)
  return status;


 status = hw->phy.ops.read_reg(hw, IXGBE_MDIO_GLOBAL_INT_CHIP_VEN_MASK,
          IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
          &reg);

 if (status != IXGBE_SUCCESS)
  return status;

 reg |= (IXGBE_MDIO_GLOBAL_AN_VEN_ALM_INT_EN |
  IXGBE_MDIO_GLOBAL_ALARM_1_INT);

 status = hw->phy.ops.write_reg(hw, IXGBE_MDIO_GLOBAL_INT_CHIP_VEN_MASK,
           IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
           reg);

 if (status != IXGBE_SUCCESS)
  return status;


 status = hw->phy.ops.read_reg(hw, IXGBE_MDIO_GLOBAL_INT_CHIP_STD_MASK,
          IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
          &reg);

 if (status != IXGBE_SUCCESS)
  return status;

 reg |= IXGBE_MDIO_GLOBAL_VEN_ALM_INT_EN;

 status = hw->phy.ops.write_reg(hw, IXGBE_MDIO_GLOBAL_INT_CHIP_STD_MASK,
           IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
           reg);

 return status;
}
