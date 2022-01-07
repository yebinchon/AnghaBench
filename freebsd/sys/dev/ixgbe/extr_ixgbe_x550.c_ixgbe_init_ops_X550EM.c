
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * set_phy_power; void* identify; int * get_firmware_version; int init; } ;
struct ixgbe_phy_info {TYPE_3__ ops; } ;
struct TYPE_6__ {scalar_t__ (* get_media_type ) (struct ixgbe_hw*) ;int * setup_fc; int get_supported_physical_layer; int reset_hw; int get_link_capabilities; int setup_sfp; int get_bus_info; int * prot_autoc_write; int * prot_autoc_read; int * enable_sec_rx_path; int * disable_sec_rx_path; int * get_fcoe_boot_status; int * get_wwn_prefix; int * set_san_mac_addr; int * get_san_mac_addr; int * bypass_rd_eep; int * bypass_set; int * bypass_valid_rd; int * bypass_rw; } ;
struct ixgbe_mac_info {TYPE_2__ ops; } ;
struct TYPE_5__ {int type; } ;
struct TYPE_8__ {int calc_checksum; int validate_checksum; int update_checksum; int write_buffer; int write; int read_buffer; int read; int init_params; } ;
struct ixgbe_eeprom_info {TYPE_4__ ops; } ;
struct ixgbe_hw {int device_id; TYPE_1__ bus; struct ixgbe_phy_info phy; struct ixgbe_eeprom_info eeprom; struct ixgbe_mac_info mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;



 int ixgbe_bus_type_internal ;
 int ixgbe_calc_eeprom_checksum_X550 ;
 int ixgbe_get_bus_info_X550em ;
 int ixgbe_get_link_capabilities_X550em ;
 scalar_t__ ixgbe_get_media_type_X550em (struct ixgbe_hw*) ;
 int ixgbe_get_supported_physical_layer_X550em ;
 void* ixgbe_identify_phy_fw ;
 void* ixgbe_identify_phy_x550em ;
 int ixgbe_init_eeprom_params_X540 ;
 int ixgbe_init_ops_X550 (struct ixgbe_hw*) ;
 int ixgbe_init_phy_ops_X550em ;
 scalar_t__ ixgbe_media_type_copper ;
 int ixgbe_read_ee_hostif_X550 ;
 int ixgbe_read_ee_hostif_buffer_X550 ;
 int ixgbe_reset_hw_X550em ;
 int * ixgbe_setup_fc_X550em ;
 int * ixgbe_setup_fc_generic ;
 int ixgbe_setup_sfp_modules_X550em ;
 int ixgbe_update_eeprom_checksum_X550 ;
 int ixgbe_validate_eeprom_checksum_X550 ;
 int ixgbe_write_ee_hostif_X550 ;
 int ixgbe_write_ee_hostif_buffer_X550 ;
 scalar_t__ stub1 (struct ixgbe_hw*) ;
 scalar_t__ stub2 (struct ixgbe_hw*) ;

s32 ixgbe_init_ops_X550EM(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;
 struct ixgbe_eeprom_info *eeprom = &hw->eeprom;
 struct ixgbe_phy_info *phy = &hw->phy;
 s32 ret_val;

 DEBUGFUNC("ixgbe_init_ops_X550EM");


 ret_val = ixgbe_init_ops_X550(hw);
 mac->ops.bypass_rw = ((void*)0);
 mac->ops.bypass_valid_rd = ((void*)0);
 mac->ops.bypass_set = ((void*)0);
 mac->ops.bypass_rd_eep = ((void*)0);


 mac->ops.get_san_mac_addr = ((void*)0);
 mac->ops.set_san_mac_addr = ((void*)0);
 mac->ops.get_wwn_prefix = ((void*)0);
 mac->ops.get_fcoe_boot_status = ((void*)0);


 mac->ops.disable_sec_rx_path = ((void*)0);
 mac->ops.enable_sec_rx_path = ((void*)0);


 mac->ops.prot_autoc_read = ((void*)0);
 mac->ops.prot_autoc_write = ((void*)0);


 hw->bus.type = ixgbe_bus_type_internal;
 mac->ops.get_bus_info = ixgbe_get_bus_info_X550em;


 mac->ops.get_media_type = ixgbe_get_media_type_X550em;
 mac->ops.setup_sfp = ixgbe_setup_sfp_modules_X550em;
 mac->ops.get_link_capabilities = ixgbe_get_link_capabilities_X550em;
 mac->ops.reset_hw = ixgbe_reset_hw_X550em;
 mac->ops.get_supported_physical_layer =
        ixgbe_get_supported_physical_layer_X550em;

 if (mac->ops.get_media_type(hw) == ixgbe_media_type_copper)
  mac->ops.setup_fc = ixgbe_setup_fc_generic;
 else
  mac->ops.setup_fc = ixgbe_setup_fc_X550em;


 phy->ops.init = ixgbe_init_phy_ops_X550em;
 switch (hw->device_id) {
 case 130:
 case 129:
  mac->ops.setup_fc = ((void*)0);
  phy->ops.identify = ixgbe_identify_phy_fw;
  phy->ops.set_phy_power = ((void*)0);
  phy->ops.get_firmware_version = ((void*)0);
  break;
 case 128:
  mac->ops.setup_fc = ((void*)0);
  phy->ops.identify = ixgbe_identify_phy_x550em;
  phy->ops.set_phy_power = ((void*)0);
  break;
 default:
  phy->ops.identify = ixgbe_identify_phy_x550em;
 }

 if (mac->ops.get_media_type(hw) != ixgbe_media_type_copper)
  phy->ops.set_phy_power = ((void*)0);



 eeprom->ops.init_params = ixgbe_init_eeprom_params_X540;
 eeprom->ops.read = ixgbe_read_ee_hostif_X550;
 eeprom->ops.read_buffer = ixgbe_read_ee_hostif_buffer_X550;
 eeprom->ops.write = ixgbe_write_ee_hostif_X550;
 eeprom->ops.write_buffer = ixgbe_write_ee_hostif_buffer_X550;
 eeprom->ops.update_checksum = ixgbe_update_eeprom_checksum_X550;
 eeprom->ops.validate_checksum = ixgbe_validate_eeprom_checksum_X550;
 eeprom->ops.calc_checksum = ixgbe_calc_eeprom_checksum_X550;

 return ret_val;
}
