
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int check_overtemp; int write_i2c_byte_unlocked; int read_i2c_byte_unlocked; int identify_sfp; int i2c_bus_clear; int write_i2c_eeprom; int read_i2c_eeprom; int read_i2c_sff8472; int write_i2c_byte; int read_i2c_byte; int get_firmware_version; int * check_link; int setup_link_speed; int setup_link; int write_reg_mdi; int read_reg_mdi; int write_reg; int read_reg; int reset; int identify; } ;
struct ixgbe_phy_info {TYPE_1__ ops; int sfp_type; } ;
struct ixgbe_hw {struct ixgbe_phy_info phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_SUCCESS ;
 int ixgbe_get_phy_firmware_version_generic ;
 int ixgbe_i2c_bus_clear ;
 int ixgbe_identify_module_generic ;
 int ixgbe_identify_phy_generic ;
 int ixgbe_read_i2c_byte_generic ;
 int ixgbe_read_i2c_byte_generic_unlocked ;
 int ixgbe_read_i2c_eeprom_generic ;
 int ixgbe_read_i2c_sff8472_generic ;
 int ixgbe_read_phy_reg_generic ;
 int ixgbe_read_phy_reg_mdi ;
 int ixgbe_reset_phy_generic ;
 int ixgbe_setup_phy_link_generic ;
 int ixgbe_setup_phy_link_speed_generic ;
 int ixgbe_sfp_type_unknown ;
 int ixgbe_tn_check_overtemp ;
 int ixgbe_write_i2c_byte_generic ;
 int ixgbe_write_i2c_byte_generic_unlocked ;
 int ixgbe_write_i2c_eeprom_generic ;
 int ixgbe_write_phy_reg_generic ;
 int ixgbe_write_phy_reg_mdi ;

s32 ixgbe_init_phy_ops_generic(struct ixgbe_hw *hw)
{
 struct ixgbe_phy_info *phy = &hw->phy;

 DEBUGFUNC("ixgbe_init_phy_ops_generic");


 phy->ops.identify = ixgbe_identify_phy_generic;
 phy->ops.reset = ixgbe_reset_phy_generic;
 phy->ops.read_reg = ixgbe_read_phy_reg_generic;
 phy->ops.write_reg = ixgbe_write_phy_reg_generic;
 phy->ops.read_reg_mdi = ixgbe_read_phy_reg_mdi;
 phy->ops.write_reg_mdi = ixgbe_write_phy_reg_mdi;
 phy->ops.setup_link = ixgbe_setup_phy_link_generic;
 phy->ops.setup_link_speed = ixgbe_setup_phy_link_speed_generic;
 phy->ops.check_link = ((void*)0);
 phy->ops.get_firmware_version = ixgbe_get_phy_firmware_version_generic;
 phy->ops.read_i2c_byte = ixgbe_read_i2c_byte_generic;
 phy->ops.write_i2c_byte = ixgbe_write_i2c_byte_generic;
 phy->ops.read_i2c_sff8472 = ixgbe_read_i2c_sff8472_generic;
 phy->ops.read_i2c_eeprom = ixgbe_read_i2c_eeprom_generic;
 phy->ops.write_i2c_eeprom = ixgbe_write_i2c_eeprom_generic;
 phy->ops.i2c_bus_clear = ixgbe_i2c_bus_clear;
 phy->ops.identify_sfp = ixgbe_identify_module_generic;
 phy->sfp_type = ixgbe_sfp_type_unknown;
 phy->ops.read_i2c_byte_unlocked = ixgbe_read_i2c_byte_generic_unlocked;
 phy->ops.write_i2c_byte_unlocked =
    ixgbe_write_i2c_byte_generic_unlocked;
 phy->ops.check_overtemp = ixgbe_tn_check_overtemp;
 return IXGBE_SUCCESS;
}
