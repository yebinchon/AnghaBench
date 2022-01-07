
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int set_phy_power; int * reset; int (* init ) (struct ixgbe_hw*) ;} ;
struct ixgbe_phy_info {TYPE_2__ ops; } ;
struct TYPE_10__ {int get_rtrup2tc; int set_fw_drv_ver; int blink_led_stop; int blink_led_start; int bypass_rd_eep; int bypass_set; int bypass_valid_rd; int bypass_rw; int check_link; int setup_rxpba; int setup_link; int get_link_capabilities; int set_vlan_anti_spoofing; int set_mac_anti_spoofing; int init_uta_tables; int clear_vfta; int set_vlvf; int set_vfta; int insert_mac_addr; int clear_vmdq; int set_vmdq_san_mac; int set_vmdq; int enable_sec_rx_path; int disable_sec_rx_path; int init_swfw_sync; int release_swfw_sync; int acquire_swfw_sync; int get_fcoe_boot_status; int get_wwn_prefix; int get_device_caps; int set_san_mac_addr; int get_san_mac_addr; int start_hw; int * write_analog_reg8; int * read_analog_reg8; int get_supported_physical_layer; int get_media_type; int enable_relaxed_ordering; int reset_hw; } ;
struct ixgbe_mac_info {int rar_highwater; int arc_subsystem_valid; TYPE_5__ ops; int max_msix_vectors; int max_tx_queues; int max_rx_queues; int rx_pb_size; int num_rar_entries; int vft_size; int mcft_size; } ;
struct TYPE_8__ {int init_params; } ;
struct TYPE_9__ {TYPE_3__ ops; } ;
struct TYPE_6__ {int calc_checksum; int validate_checksum; int update_checksum; int write_buffer; int write; int read_buffer; int read; int init_params; } ;
struct ixgbe_eeprom_info {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ mbx; struct ixgbe_eeprom_info eeprom; struct ixgbe_phy_info phy; struct ixgbe_mac_info mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_FWSM_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_FWSM_MODE_MASK ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_X540_MAX_RX_QUEUES ;
 int IXGBE_X540_MAX_TX_QUEUES ;
 int IXGBE_X540_MC_TBL_SIZE ;
 int IXGBE_X540_RAR_ENTRIES ;
 int IXGBE_X540_RX_PB_SIZE ;
 int IXGBE_X540_VFT_TBL_SIZE ;
 int ixgbe_acquire_swfw_sync_X540 ;
 int ixgbe_blink_led_start_X540 ;
 int ixgbe_blink_led_stop_X540 ;
 int ixgbe_bypass_rd_eep_generic ;
 int ixgbe_bypass_rw_generic ;
 int ixgbe_bypass_set_generic ;
 int ixgbe_bypass_valid_rd_generic ;
 int ixgbe_calc_eeprom_checksum_X540 ;
 int ixgbe_check_mac_link_generic ;
 int ixgbe_clear_vfta_generic ;
 int ixgbe_clear_vmdq_generic ;
 int ixgbe_dcb_get_rtrup2tc_generic ;
 int ixgbe_disable_sec_rx_path_generic ;
 int ixgbe_enable_relaxed_ordering_gen2 ;
 int ixgbe_enable_sec_rx_path_generic ;
 int ixgbe_get_copper_link_capabilities_generic ;
 int ixgbe_get_device_caps_generic ;
 int ixgbe_get_fcoe_boot_status_generic ;
 int ixgbe_get_media_type_X540 ;
 int ixgbe_get_pcie_msix_count_generic (struct ixgbe_hw*) ;
 int ixgbe_get_san_mac_addr_generic ;
 int ixgbe_get_supported_physical_layer_X540 ;
 int ixgbe_get_wwn_prefix_generic ;
 int ixgbe_init_eeprom_params_X540 ;
 int ixgbe_init_mbx_params_pf ;
 int ixgbe_init_ops_generic (struct ixgbe_hw*) ;
 int ixgbe_init_phy_ops_generic (struct ixgbe_hw*) ;
 int ixgbe_init_swfw_sync_X540 ;
 int ixgbe_init_uta_tables_generic ;
 int ixgbe_insert_mac_addr_generic ;
 int ixgbe_read_eerd_X540 ;
 int ixgbe_read_eerd_buffer_X540 ;
 int ixgbe_release_swfw_sync_X540 ;
 int ixgbe_reset_hw_X540 ;
 int ixgbe_set_copper_phy_power ;
 int ixgbe_set_fw_drv_ver_generic ;
 int ixgbe_set_mac_anti_spoofing ;
 int ixgbe_set_rxpba_generic ;
 int ixgbe_set_san_mac_addr_generic ;
 int ixgbe_set_vfta_generic ;
 int ixgbe_set_vlan_anti_spoofing ;
 int ixgbe_set_vlvf_generic ;
 int ixgbe_set_vmdq_generic ;
 int ixgbe_set_vmdq_san_mac_generic ;
 int ixgbe_setup_mac_link_X540 ;
 int ixgbe_start_hw_X540 ;
 int ixgbe_update_eeprom_checksum_X540 ;
 int ixgbe_validate_eeprom_checksum_X540 ;
 int ixgbe_write_eewr_X540 ;
 int ixgbe_write_eewr_buffer_X540 ;

s32 ixgbe_init_ops_X540(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;
 struct ixgbe_phy_info *phy = &hw->phy;
 struct ixgbe_eeprom_info *eeprom = &hw->eeprom;
 s32 ret_val;

 DEBUGFUNC("ixgbe_init_ops_X540");

 ret_val = ixgbe_init_phy_ops_generic(hw);
 ret_val = ixgbe_init_ops_generic(hw);



 eeprom->ops.init_params = ixgbe_init_eeprom_params_X540;
 eeprom->ops.read = ixgbe_read_eerd_X540;
 eeprom->ops.read_buffer = ixgbe_read_eerd_buffer_X540;
 eeprom->ops.write = ixgbe_write_eewr_X540;
 eeprom->ops.write_buffer = ixgbe_write_eewr_buffer_X540;
 eeprom->ops.update_checksum = ixgbe_update_eeprom_checksum_X540;
 eeprom->ops.validate_checksum = ixgbe_validate_eeprom_checksum_X540;
 eeprom->ops.calc_checksum = ixgbe_calc_eeprom_checksum_X540;


 phy->ops.init = ixgbe_init_phy_ops_generic;
 phy->ops.reset = ((void*)0);
 phy->ops.set_phy_power = ixgbe_set_copper_phy_power;


 mac->ops.reset_hw = ixgbe_reset_hw_X540;
 mac->ops.enable_relaxed_ordering = ixgbe_enable_relaxed_ordering_gen2;
 mac->ops.get_media_type = ixgbe_get_media_type_X540;
 mac->ops.get_supported_physical_layer =
        ixgbe_get_supported_physical_layer_X540;
 mac->ops.read_analog_reg8 = ((void*)0);
 mac->ops.write_analog_reg8 = ((void*)0);
 mac->ops.start_hw = ixgbe_start_hw_X540;
 mac->ops.get_san_mac_addr = ixgbe_get_san_mac_addr_generic;
 mac->ops.set_san_mac_addr = ixgbe_set_san_mac_addr_generic;
 mac->ops.get_device_caps = ixgbe_get_device_caps_generic;
 mac->ops.get_wwn_prefix = ixgbe_get_wwn_prefix_generic;
 mac->ops.get_fcoe_boot_status = ixgbe_get_fcoe_boot_status_generic;
 mac->ops.acquire_swfw_sync = ixgbe_acquire_swfw_sync_X540;
 mac->ops.release_swfw_sync = ixgbe_release_swfw_sync_X540;
 mac->ops.init_swfw_sync = ixgbe_init_swfw_sync_X540;
 mac->ops.disable_sec_rx_path = ixgbe_disable_sec_rx_path_generic;
 mac->ops.enable_sec_rx_path = ixgbe_enable_sec_rx_path_generic;


 mac->ops.set_vmdq = ixgbe_set_vmdq_generic;
 mac->ops.set_vmdq_san_mac = ixgbe_set_vmdq_san_mac_generic;
 mac->ops.clear_vmdq = ixgbe_clear_vmdq_generic;
 mac->ops.insert_mac_addr = ixgbe_insert_mac_addr_generic;
 mac->rar_highwater = 1;
 mac->ops.set_vfta = ixgbe_set_vfta_generic;
 mac->ops.set_vlvf = ixgbe_set_vlvf_generic;
 mac->ops.clear_vfta = ixgbe_clear_vfta_generic;
 mac->ops.init_uta_tables = ixgbe_init_uta_tables_generic;
 mac->ops.set_mac_anti_spoofing = ixgbe_set_mac_anti_spoofing;
 mac->ops.set_vlan_anti_spoofing = ixgbe_set_vlan_anti_spoofing;


 mac->ops.get_link_capabilities =
    ixgbe_get_copper_link_capabilities_generic;
 mac->ops.setup_link = ixgbe_setup_mac_link_X540;
 mac->ops.setup_rxpba = ixgbe_set_rxpba_generic;
 mac->ops.check_link = ixgbe_check_mac_link_generic;
 mac->ops.bypass_rw = ixgbe_bypass_rw_generic;
 mac->ops.bypass_valid_rd = ixgbe_bypass_valid_rd_generic;
 mac->ops.bypass_set = ixgbe_bypass_set_generic;
 mac->ops.bypass_rd_eep = ixgbe_bypass_rd_eep_generic;


 mac->mcft_size = IXGBE_X540_MC_TBL_SIZE;
 mac->vft_size = IXGBE_X540_VFT_TBL_SIZE;
 mac->num_rar_entries = IXGBE_X540_RAR_ENTRIES;
 mac->rx_pb_size = IXGBE_X540_RX_PB_SIZE;
 mac->max_rx_queues = IXGBE_X540_MAX_RX_QUEUES;
 mac->max_tx_queues = IXGBE_X540_MAX_TX_QUEUES;
 mac->max_msix_vectors = ixgbe_get_pcie_msix_count_generic(hw);






 mac->arc_subsystem_valid = !!(IXGBE_READ_REG(hw, IXGBE_FWSM_BY_MAC(hw))
         & IXGBE_FWSM_MODE_MASK);

 hw->mbx.ops.init_params = ixgbe_init_mbx_params_pf;


 mac->ops.blink_led_start = ixgbe_blink_led_start_X540;
 mac->ops.blink_led_stop = ixgbe_blink_led_stop_X540;


 mac->ops.set_fw_drv_ver = ixgbe_set_fw_drv_ver_generic;

 mac->ops.get_rtrup2tc = ixgbe_dcb_get_rtrup2tc_generic;

 return ret_val;
}
