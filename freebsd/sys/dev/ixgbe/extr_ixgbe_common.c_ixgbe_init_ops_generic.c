
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int * dmac_config_tcs; int * dmac_update_tcs; int * dmac_config; int * check_link; int * setup_link; int * get_link_capabilities; int fc_autoneg; int setup_fc; int fc_enable; int disable_rx; int enable_rx; int * init_uta_tables; int * set_vlvf; int * set_vfta; int * clear_vfta; int disable_mc; int enable_mc; int update_mc_addr_list; int update_uc_addr_list; int init_rx_addrs; int * clear_vmdq; int * set_vmdq; int * insert_mac_addr; int clear_rar; int set_rar; int init_led_link_act; int blink_led_stop; int blink_led_start; int led_off; int led_on; int prot_autoc_write; int prot_autoc_read; int release_swfw_sync; int acquire_swfw_sync; int set_lan_id; int get_bus_info; int stop_adapter; int get_mac_addr; int enable_rx_dma; int * get_supported_physical_layer; int * get_media_type; int clear_hw_cntrs; int start_hw; int * reset_hw; int init_hw; } ;
struct ixgbe_mac_info {TYPE_2__ ops; } ;
struct TYPE_3__ {int calc_checksum; int update_checksum; int validate_checksum; int write_buffer; int write; int read_buffer; int read; int init_params; } ;
struct ixgbe_eeprom_info {TYPE_1__ ops; } ;
struct ixgbe_hw {struct ixgbe_mac_info mac; struct ixgbe_eeprom_info eeprom; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_EEC_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_EEC_PRES ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 int ixgbe_acquire_swfw_sync ;
 int ixgbe_blink_led_start_generic ;
 int ixgbe_blink_led_stop_generic ;
 int ixgbe_calc_eeprom_checksum_generic ;
 int ixgbe_clear_hw_cntrs_generic ;
 int ixgbe_clear_rar_generic ;
 int ixgbe_disable_mc_generic ;
 int ixgbe_disable_rx_generic ;
 int ixgbe_enable_mc_generic ;
 int ixgbe_enable_rx_dma_generic ;
 int ixgbe_enable_rx_generic ;
 int ixgbe_fc_autoneg ;
 int ixgbe_fc_enable_generic ;
 int ixgbe_get_bus_info_generic ;
 int ixgbe_get_mac_addr_generic ;
 int ixgbe_init_eeprom_params_generic ;
 int ixgbe_init_hw_generic ;
 int ixgbe_init_led_link_act_generic ;
 int ixgbe_init_rx_addrs_generic ;
 int ixgbe_led_off_generic ;
 int ixgbe_led_on_generic ;
 int ixgbe_read_eeprom_bit_bang_generic ;
 int ixgbe_read_eeprom_buffer_bit_bang_generic ;
 int ixgbe_read_eerd_buffer_generic ;
 int ixgbe_read_eerd_generic ;
 int ixgbe_release_swfw_sync ;
 int ixgbe_set_lan_id_multi_port_pcie ;
 int ixgbe_set_rar_generic ;
 int ixgbe_setup_fc_generic ;
 int ixgbe_start_hw_generic ;
 int ixgbe_stop_adapter_generic ;
 int ixgbe_update_eeprom_checksum_generic ;
 int ixgbe_update_mc_addr_list_generic ;
 int ixgbe_update_uc_addr_list_generic ;
 int ixgbe_validate_eeprom_checksum_generic ;
 int ixgbe_write_eeprom_buffer_bit_bang_generic ;
 int ixgbe_write_eeprom_generic ;
 int prot_autoc_read_generic ;
 int prot_autoc_write_generic ;

s32 ixgbe_init_ops_generic(struct ixgbe_hw *hw)
{
 struct ixgbe_eeprom_info *eeprom = &hw->eeprom;
 struct ixgbe_mac_info *mac = &hw->mac;
 u32 eec = IXGBE_READ_REG(hw, IXGBE_EEC_BY_MAC(hw));

 DEBUGFUNC("ixgbe_init_ops_generic");


 eeprom->ops.init_params = ixgbe_init_eeprom_params_generic;

 if (eec & IXGBE_EEC_PRES) {
  eeprom->ops.read = ixgbe_read_eerd_generic;
  eeprom->ops.read_buffer = ixgbe_read_eerd_buffer_generic;
 } else {
  eeprom->ops.read = ixgbe_read_eeprom_bit_bang_generic;
  eeprom->ops.read_buffer =
     ixgbe_read_eeprom_buffer_bit_bang_generic;
 }
 eeprom->ops.write = ixgbe_write_eeprom_generic;
 eeprom->ops.write_buffer = ixgbe_write_eeprom_buffer_bit_bang_generic;
 eeprom->ops.validate_checksum =
          ixgbe_validate_eeprom_checksum_generic;
 eeprom->ops.update_checksum = ixgbe_update_eeprom_checksum_generic;
 eeprom->ops.calc_checksum = ixgbe_calc_eeprom_checksum_generic;


 mac->ops.init_hw = ixgbe_init_hw_generic;
 mac->ops.reset_hw = ((void*)0);
 mac->ops.start_hw = ixgbe_start_hw_generic;
 mac->ops.clear_hw_cntrs = ixgbe_clear_hw_cntrs_generic;
 mac->ops.get_media_type = ((void*)0);
 mac->ops.get_supported_physical_layer = ((void*)0);
 mac->ops.enable_rx_dma = ixgbe_enable_rx_dma_generic;
 mac->ops.get_mac_addr = ixgbe_get_mac_addr_generic;
 mac->ops.stop_adapter = ixgbe_stop_adapter_generic;
 mac->ops.get_bus_info = ixgbe_get_bus_info_generic;
 mac->ops.set_lan_id = ixgbe_set_lan_id_multi_port_pcie;
 mac->ops.acquire_swfw_sync = ixgbe_acquire_swfw_sync;
 mac->ops.release_swfw_sync = ixgbe_release_swfw_sync;
 mac->ops.prot_autoc_read = prot_autoc_read_generic;
 mac->ops.prot_autoc_write = prot_autoc_write_generic;


 mac->ops.led_on = ixgbe_led_on_generic;
 mac->ops.led_off = ixgbe_led_off_generic;
 mac->ops.blink_led_start = ixgbe_blink_led_start_generic;
 mac->ops.blink_led_stop = ixgbe_blink_led_stop_generic;
 mac->ops.init_led_link_act = ixgbe_init_led_link_act_generic;


 mac->ops.set_rar = ixgbe_set_rar_generic;
 mac->ops.clear_rar = ixgbe_clear_rar_generic;
 mac->ops.insert_mac_addr = ((void*)0);
 mac->ops.set_vmdq = ((void*)0);
 mac->ops.clear_vmdq = ((void*)0);
 mac->ops.init_rx_addrs = ixgbe_init_rx_addrs_generic;
 mac->ops.update_uc_addr_list = ixgbe_update_uc_addr_list_generic;
 mac->ops.update_mc_addr_list = ixgbe_update_mc_addr_list_generic;
 mac->ops.enable_mc = ixgbe_enable_mc_generic;
 mac->ops.disable_mc = ixgbe_disable_mc_generic;
 mac->ops.clear_vfta = ((void*)0);
 mac->ops.set_vfta = ((void*)0);
 mac->ops.set_vlvf = ((void*)0);
 mac->ops.init_uta_tables = ((void*)0);
 mac->ops.enable_rx = ixgbe_enable_rx_generic;
 mac->ops.disable_rx = ixgbe_disable_rx_generic;


 mac->ops.fc_enable = ixgbe_fc_enable_generic;
 mac->ops.setup_fc = ixgbe_setup_fc_generic;
 mac->ops.fc_autoneg = ixgbe_fc_autoneg;


 mac->ops.get_link_capabilities = ((void*)0);
 mac->ops.setup_link = ((void*)0);
 mac->ops.check_link = ((void*)0);
 mac->ops.dmac_config = ((void*)0);
 mac->ops.dmac_update_tcs = ((void*)0);
 mac->ops.dmac_config_tcs = ((void*)0);

 return IXGBE_SUCCESS;
}
