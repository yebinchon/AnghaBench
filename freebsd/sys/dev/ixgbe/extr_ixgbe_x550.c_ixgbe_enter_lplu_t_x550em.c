
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_7__ {scalar_t__ (* read_reg ) (struct ixgbe_hw*,int ,int ,int *) ;} ;
struct TYPE_10__ {int autoneg_advertised; TYPE_2__ ops; } ;
struct TYPE_8__ {scalar_t__ (* setup_link ) (struct ixgbe_hw*,scalar_t__,int ) ;} ;
struct TYPE_9__ {scalar_t__ type; TYPE_3__ ops; } ;
struct TYPE_6__ {int ctrl_word_3; } ;
struct ixgbe_hw {TYPE_5__ phy; TYPE_4__ mac; scalar_t__ wol_enabled; TYPE_1__ eeprom; } ;
typedef scalar_t__ s32 ;
typedef scalar_t__ ixgbe_link_speed ;


 int FALSE ;
 int IXGBE_FUSES0_GROUP (int ) ;
 int IXGBE_FUSES0_REV_MASK ;
 scalar_t__ IXGBE_LINK_SPEED_10GB_FULL ;
 scalar_t__ IXGBE_LINK_SPEED_1GB_FULL ;
 scalar_t__ IXGBE_LINK_SPEED_UNKNOWN ;
 int IXGBE_MDIO_AUTO_NEG_DEV_TYPE ;
 int IXGBE_MDIO_AUTO_NEG_VENDOR_STAT ;
 int IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_10GB ;
 int IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_1GB ;
 int IXGBE_MDIO_AUTO_NEG_VENDOR_TX_ALARM ;
 int IXGBE_MDIO_AUTO_NEG_VEN_STAT_SPEED_MASK ;
 int IXGBE_MII_10GBASE_T_AUTONEG_CTRL_REG ;
 int IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_SUCCESS ;
 int NVM_INIT_CTRL_3 ;
 int NVM_INIT_CTRL_3_LPLU ;
 scalar_t__ ixgbe_check_reset_blocked (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_ext_phy_t_x550em_get_link (struct ixgbe_hw*,int*) ;
 scalar_t__ ixgbe_get_lcd_t_x550em (struct ixgbe_hw*,scalar_t__*) ;
 scalar_t__ ixgbe_mac_X550EM_x ;
 scalar_t__ ixgbe_mng_present (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_read_eeprom (struct ixgbe_hw*,int ,int*) ;
 scalar_t__ ixgbe_set_copper_phy_power (struct ixgbe_hw*,int ) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int ,int *) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ,int ,int *) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int ,int ,int *) ;
 scalar_t__ stub4 (struct ixgbe_hw*,int ,int ,int *) ;
 scalar_t__ stub5 (struct ixgbe_hw*,scalar_t__,int ) ;

s32 ixgbe_enter_lplu_t_x550em(struct ixgbe_hw *hw)
{
 u16 an_10g_cntl_reg, autoneg_reg, speed;
 s32 status;
 ixgbe_link_speed lcd_speed;
 u32 save_autoneg;
 bool link_up;


 if ((hw->mac.type == ixgbe_mac_X550EM_x) &&
     (IXGBE_FUSES0_REV_MASK &
      IXGBE_READ_REG(hw, IXGBE_FUSES0_GROUP(0))))
  return IXGBE_SUCCESS;


 if (ixgbe_check_reset_blocked(hw))
  return IXGBE_SUCCESS;

 status = ixgbe_ext_phy_t_x550em_get_link(hw, &link_up);
 if (status != IXGBE_SUCCESS)
  return status;

 status = ixgbe_read_eeprom(hw, NVM_INIT_CTRL_3, &hw->eeprom.ctrl_word_3);

 if (status != IXGBE_SUCCESS)
  return status;




 if (!link_up || !(hw->eeprom.ctrl_word_3 & NVM_INIT_CTRL_3_LPLU) ||
     !(hw->wol_enabled || ixgbe_mng_present(hw)))
  return ixgbe_set_copper_phy_power(hw, FALSE);


 status = ixgbe_get_lcd_t_x550em(hw, &lcd_speed);

 if (status != IXGBE_SUCCESS)
  return status;


 if (lcd_speed == IXGBE_LINK_SPEED_UNKNOWN)
  return ixgbe_set_copper_phy_power(hw, FALSE);

 status = hw->phy.ops.read_reg(hw, IXGBE_MDIO_AUTO_NEG_VENDOR_STAT,
          IXGBE_MDIO_AUTO_NEG_DEV_TYPE,
          &speed);

 if (status != IXGBE_SUCCESS)
  return status;


 status = ixgbe_ext_phy_t_x550em_get_link(hw, &link_up);
 if (status != IXGBE_SUCCESS)
  return ixgbe_set_copper_phy_power(hw, FALSE);


 speed &= IXGBE_MDIO_AUTO_NEG_VEN_STAT_SPEED_MASK;


 if (((speed == IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_1GB) &&
      (lcd_speed == IXGBE_LINK_SPEED_1GB_FULL)) ||
     ((speed == IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_10GB) &&
      (lcd_speed == IXGBE_LINK_SPEED_10GB_FULL)))
  return status;


 status = hw->phy.ops.read_reg(hw, IXGBE_MDIO_AUTO_NEG_VENDOR_TX_ALARM,
          IXGBE_MDIO_AUTO_NEG_DEV_TYPE,
          &autoneg_reg);

 if (status != IXGBE_SUCCESS)
  return status;

 status = hw->phy.ops.read_reg(hw, IXGBE_MII_10GBASE_T_AUTONEG_CTRL_REG,
        IXGBE_MDIO_AUTO_NEG_DEV_TYPE,
        &an_10g_cntl_reg);

 if (status != IXGBE_SUCCESS)
  return status;

 status = hw->phy.ops.read_reg(hw,
        IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG,
        IXGBE_MDIO_AUTO_NEG_DEV_TYPE,
        &autoneg_reg);

 if (status != IXGBE_SUCCESS)
  return status;

 save_autoneg = hw->phy.autoneg_advertised;


 status = hw->mac.ops.setup_link(hw, lcd_speed, FALSE);


 hw->phy.autoneg_advertised = save_autoneg;

 return status;
}
