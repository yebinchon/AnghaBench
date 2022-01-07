
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * led_off; int * led_on; int set_fw_drv_ver; int disable_rx; int restore_mdd_vf; int mdd_event; int enable_mdd; int disable_mdd; int get_rtrup2tc; int set_ethertype_anti_spoofing; int set_source_address_pruning; int * setup_eee; int dmac_update_tcs; int dmac_config_tcs; int dmac_config; } ;
struct ixgbe_mac_info {TYPE_2__ ops; } ;
struct TYPE_3__ {int validate_checksum; int update_checksum; int write_buffer; int write; int read_buffer; int read; int calc_checksum; int init_params; } ;
struct ixgbe_eeprom_info {TYPE_1__ ops; } ;
struct ixgbe_hw {int device_id; struct ixgbe_mac_info mac; struct ixgbe_eeprom_info eeprom; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;



 int ixgbe_calc_eeprom_checksum_X550 ;
 int ixgbe_dcb_get_rtrup2tc_generic ;
 int ixgbe_disable_mdd_X550 ;
 int ixgbe_disable_rx_x550 ;
 int ixgbe_dmac_config_X550 ;
 int ixgbe_dmac_config_tcs_X550 ;
 int ixgbe_dmac_update_tcs_X550 ;
 int ixgbe_enable_mdd_X550 ;
 int ixgbe_init_eeprom_params_X550 ;
 int ixgbe_init_ops_X540 (struct ixgbe_hw*) ;
 int * ixgbe_led_off_t_X550em ;
 int * ixgbe_led_on_t_X550em ;
 int ixgbe_mdd_event_X550 ;
 int ixgbe_read_ee_hostif_X550 ;
 int ixgbe_read_ee_hostif_buffer_X550 ;
 int ixgbe_restore_mdd_vf_X550 ;
 int ixgbe_set_ethertype_anti_spoofing_X550 ;
 int ixgbe_set_fw_drv_ver_x550 ;
 int ixgbe_set_source_address_pruning_X550 ;
 int ixgbe_update_eeprom_checksum_X550 ;
 int ixgbe_validate_eeprom_checksum_X550 ;
 int ixgbe_write_ee_hostif_X550 ;
 int ixgbe_write_ee_hostif_buffer_X550 ;

s32 ixgbe_init_ops_X550(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;
 struct ixgbe_eeprom_info *eeprom = &hw->eeprom;
 s32 ret_val;

 DEBUGFUNC("ixgbe_init_ops_X550");

 ret_val = ixgbe_init_ops_X540(hw);
 mac->ops.dmac_config = ixgbe_dmac_config_X550;
 mac->ops.dmac_config_tcs = ixgbe_dmac_config_tcs_X550;
 mac->ops.dmac_update_tcs = ixgbe_dmac_update_tcs_X550;
 mac->ops.setup_eee = ((void*)0);
 mac->ops.set_source_address_pruning =
   ixgbe_set_source_address_pruning_X550;
 mac->ops.set_ethertype_anti_spoofing =
   ixgbe_set_ethertype_anti_spoofing_X550;

 mac->ops.get_rtrup2tc = ixgbe_dcb_get_rtrup2tc_generic;
 eeprom->ops.init_params = ixgbe_init_eeprom_params_X550;
 eeprom->ops.calc_checksum = ixgbe_calc_eeprom_checksum_X550;
 eeprom->ops.read = ixgbe_read_ee_hostif_X550;
 eeprom->ops.read_buffer = ixgbe_read_ee_hostif_buffer_X550;
 eeprom->ops.write = ixgbe_write_ee_hostif_X550;
 eeprom->ops.write_buffer = ixgbe_write_ee_hostif_buffer_X550;
 eeprom->ops.update_checksum = ixgbe_update_eeprom_checksum_X550;
 eeprom->ops.validate_checksum = ixgbe_validate_eeprom_checksum_X550;

 mac->ops.disable_mdd = ixgbe_disable_mdd_X550;
 mac->ops.enable_mdd = ixgbe_enable_mdd_X550;
 mac->ops.mdd_event = ixgbe_mdd_event_X550;
 mac->ops.restore_mdd_vf = ixgbe_restore_mdd_vf_X550;
 mac->ops.disable_rx = ixgbe_disable_rx_x550;

 mac->ops.set_fw_drv_ver = ixgbe_set_fw_drv_ver_x550;
 switch (hw->device_id) {
 case 128:
  hw->mac.ops.led_on = ((void*)0);
  hw->mac.ops.led_off = ((void*)0);
  break;
 case 129:
 case 130:
  hw->mac.ops.led_on = ixgbe_led_on_t_X550em;
  hw->mac.ops.led_off = ixgbe_led_off_t_X550em;
  break;
 default:
  break;
 }
 return ret_val;
}
