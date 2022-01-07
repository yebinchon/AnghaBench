
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int init; int identify; } ;
struct ixgbe_phy_info {TYPE_1__ ops; } ;
struct TYPE_10__ {int get_rtrup2tc; int bypass_rd_eep; int bypass_set; int bypass_valid_rd; int bypass_rw; int set_fw_drv_ver; int setup_rxpba; int check_link; int get_link_capabilities; int set_vlan_anti_spoofing; int set_mac_anti_spoofing; int setup_sfp; int init_uta_tables; int clear_vfta; int set_vlvf; int set_vfta; int insert_mac_addr; int clear_vmdq; int set_vmdq_san_mac; int set_vmdq; int prot_autoc_write; int prot_autoc_read; int get_fcoe_boot_status; int get_wwn_prefix; int get_device_caps; int set_san_mac_addr; int get_san_mac_addr; int start_hw; int write_analog_reg8; int read_analog_reg8; int enable_rx_dma; int enable_sec_rx_path; int disable_sec_rx_path; int get_supported_physical_layer; int get_media_type; int enable_relaxed_ordering; int reset_hw; } ;
struct ixgbe_mac_info {int rar_highwater; int arc_subsystem_valid; TYPE_5__ ops; int max_msix_vectors; int max_tx_queues; int max_rx_queues; int rx_pb_size; int num_rar_entries; int vft_size; int mcft_size; } ;
struct TYPE_7__ {int init_params; } ;
struct TYPE_8__ {TYPE_2__ ops; } ;
struct TYPE_9__ {int read_buffer; int read; } ;
struct ixgbe_eeprom_info {TYPE_4__ ops; } ;
struct ixgbe_hw {TYPE_3__ mbx; struct ixgbe_eeprom_info eeprom; struct ixgbe_phy_info phy; struct ixgbe_mac_info mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_82599_MAX_RX_QUEUES ;
 int IXGBE_82599_MAX_TX_QUEUES ;
 int IXGBE_82599_MC_TBL_SIZE ;
 int IXGBE_82599_RAR_ENTRIES ;
 int IXGBE_82599_RX_PB_SIZE ;
 int IXGBE_82599_VFT_TBL_SIZE ;
 int IXGBE_FWSM_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_FWSM_MODE_MASK ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int ixgbe_bypass_rd_eep_generic ;
 int ixgbe_bypass_rw_generic ;
 int ixgbe_bypass_set_generic ;
 int ixgbe_bypass_valid_rd_generic ;
 int ixgbe_check_mac_link_generic ;
 int ixgbe_clear_vfta_generic ;
 int ixgbe_clear_vmdq_generic ;
 int ixgbe_dcb_get_rtrup2tc_generic ;
 int ixgbe_disable_sec_rx_path_generic ;
 int ixgbe_enable_relaxed_ordering_gen2 ;
 int ixgbe_enable_rx_dma_82599 ;
 int ixgbe_enable_sec_rx_path_generic ;
 int ixgbe_get_device_caps_generic ;
 int ixgbe_get_fcoe_boot_status_generic ;
 int ixgbe_get_link_capabilities_82599 ;
 int ixgbe_get_media_type_82599 ;
 int ixgbe_get_pcie_msix_count_generic (struct ixgbe_hw*) ;
 int ixgbe_get_san_mac_addr_generic ;
 int ixgbe_get_supported_physical_layer_82599 ;
 int ixgbe_get_wwn_prefix_generic ;
 int ixgbe_identify_phy_82599 ;
 int ixgbe_init_mac_link_ops_82599 (struct ixgbe_hw*) ;
 int ixgbe_init_mbx_params_pf ;
 int ixgbe_init_ops_generic (struct ixgbe_hw*) ;
 int ixgbe_init_phy_ops_82599 ;
 int ixgbe_init_phy_ops_generic (struct ixgbe_hw*) ;
 int ixgbe_init_uta_tables_generic ;
 int ixgbe_insert_mac_addr_generic ;
 int ixgbe_read_analog_reg8_82599 ;
 int ixgbe_read_eeprom_82599 ;
 int ixgbe_read_eeprom_buffer_82599 ;
 int ixgbe_reset_hw_82599 ;
 int ixgbe_set_fw_drv_ver_generic ;
 int ixgbe_set_mac_anti_spoofing ;
 int ixgbe_set_rxpba_generic ;
 int ixgbe_set_san_mac_addr_generic ;
 int ixgbe_set_vfta_generic ;
 int ixgbe_set_vlan_anti_spoofing ;
 int ixgbe_set_vlvf_generic ;
 int ixgbe_set_vmdq_generic ;
 int ixgbe_set_vmdq_san_mac_generic ;
 int ixgbe_setup_sfp_modules_82599 ;
 int ixgbe_start_hw_82599 ;
 int ixgbe_write_analog_reg8_82599 ;
 int prot_autoc_read_82599 ;
 int prot_autoc_write_82599 ;

s32 ixgbe_init_ops_82599(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;
 struct ixgbe_phy_info *phy = &hw->phy;
 struct ixgbe_eeprom_info *eeprom = &hw->eeprom;
 s32 ret_val;

 DEBUGFUNC("ixgbe_init_ops_82599");

 ixgbe_init_phy_ops_generic(hw);
 ret_val = ixgbe_init_ops_generic(hw);


 phy->ops.identify = ixgbe_identify_phy_82599;
 phy->ops.init = ixgbe_init_phy_ops_82599;


 mac->ops.reset_hw = ixgbe_reset_hw_82599;
 mac->ops.enable_relaxed_ordering = ixgbe_enable_relaxed_ordering_gen2;
 mac->ops.get_media_type = ixgbe_get_media_type_82599;
 mac->ops.get_supported_physical_layer =
        ixgbe_get_supported_physical_layer_82599;
 mac->ops.disable_sec_rx_path = ixgbe_disable_sec_rx_path_generic;
 mac->ops.enable_sec_rx_path = ixgbe_enable_sec_rx_path_generic;
 mac->ops.enable_rx_dma = ixgbe_enable_rx_dma_82599;
 mac->ops.read_analog_reg8 = ixgbe_read_analog_reg8_82599;
 mac->ops.write_analog_reg8 = ixgbe_write_analog_reg8_82599;
 mac->ops.start_hw = ixgbe_start_hw_82599;
 mac->ops.get_san_mac_addr = ixgbe_get_san_mac_addr_generic;
 mac->ops.set_san_mac_addr = ixgbe_set_san_mac_addr_generic;
 mac->ops.get_device_caps = ixgbe_get_device_caps_generic;
 mac->ops.get_wwn_prefix = ixgbe_get_wwn_prefix_generic;
 mac->ops.get_fcoe_boot_status = ixgbe_get_fcoe_boot_status_generic;
 mac->ops.prot_autoc_read = prot_autoc_read_82599;
 mac->ops.prot_autoc_write = prot_autoc_write_82599;


 mac->ops.set_vmdq = ixgbe_set_vmdq_generic;
 mac->ops.set_vmdq_san_mac = ixgbe_set_vmdq_san_mac_generic;
 mac->ops.clear_vmdq = ixgbe_clear_vmdq_generic;
 mac->ops.insert_mac_addr = ixgbe_insert_mac_addr_generic;
 mac->rar_highwater = 1;
 mac->ops.set_vfta = ixgbe_set_vfta_generic;
 mac->ops.set_vlvf = ixgbe_set_vlvf_generic;
 mac->ops.clear_vfta = ixgbe_clear_vfta_generic;
 mac->ops.init_uta_tables = ixgbe_init_uta_tables_generic;
 mac->ops.setup_sfp = ixgbe_setup_sfp_modules_82599;
 mac->ops.set_mac_anti_spoofing = ixgbe_set_mac_anti_spoofing;
 mac->ops.set_vlan_anti_spoofing = ixgbe_set_vlan_anti_spoofing;


 mac->ops.get_link_capabilities = ixgbe_get_link_capabilities_82599;
 mac->ops.check_link = ixgbe_check_mac_link_generic;
 mac->ops.setup_rxpba = ixgbe_set_rxpba_generic;
 ixgbe_init_mac_link_ops_82599(hw);

 mac->mcft_size = IXGBE_82599_MC_TBL_SIZE;
 mac->vft_size = IXGBE_82599_VFT_TBL_SIZE;
 mac->num_rar_entries = IXGBE_82599_RAR_ENTRIES;
 mac->rx_pb_size = IXGBE_82599_RX_PB_SIZE;
 mac->max_rx_queues = IXGBE_82599_MAX_RX_QUEUES;
 mac->max_tx_queues = IXGBE_82599_MAX_TX_QUEUES;
 mac->max_msix_vectors = ixgbe_get_pcie_msix_count_generic(hw);

 mac->arc_subsystem_valid = !!(IXGBE_READ_REG(hw, IXGBE_FWSM_BY_MAC(hw))
          & IXGBE_FWSM_MODE_MASK);

 hw->mbx.ops.init_params = ixgbe_init_mbx_params_pf;


 eeprom->ops.read = ixgbe_read_eeprom_82599;
 eeprom->ops.read_buffer = ixgbe_read_eeprom_buffer_82599;


 mac->ops.set_fw_drv_ver = ixgbe_set_fw_drv_ver_generic;

 mac->ops.bypass_rw = ixgbe_bypass_rw_generic;
 mac->ops.bypass_valid_rd = ixgbe_bypass_valid_rd_generic;
 mac->ops.bypass_set = ixgbe_bypass_set_generic;
 mac->ops.bypass_rd_eep = ixgbe_bypass_rd_eep_generic;

 mac->ops.get_rtrup2tc = ixgbe_dcb_get_rtrup2tc_generic;

 return ret_val;
}
