
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int read_i2c_sff8472; int read_i2c_eeprom; int init; } ;
struct ixgbe_phy_info {TYPE_1__ ops; } ;
struct TYPE_4__ {int * get_rtrup2tc; int * set_fw_drv_ver; int setup_rxpba; int get_link_capabilities; int * flap_tx_laser; int setup_link; int check_link; int fc_enable; int clear_vfta; int * set_vlvf; int set_vfta; int clear_vmdq; int set_vmdq; int enable_rx_dma; int set_lan_id; int write_analog_reg8; int read_analog_reg8; int get_supported_physical_layer; int get_media_type; int reset_hw; int enable_relaxed_ordering; int start_hw; } ;
struct ixgbe_mac_info {TYPE_2__ ops; int max_msix_vectors; int max_tx_queues; int max_rx_queues; int rx_pb_size; int num_rar_entries; int vft_size; int mcft_size; } ;
struct ixgbe_hw {struct ixgbe_phy_info phy; struct ixgbe_mac_info mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_82598_MAX_RX_QUEUES ;
 int IXGBE_82598_MAX_TX_QUEUES ;
 int IXGBE_82598_MC_TBL_SIZE ;
 int IXGBE_82598_RAR_ENTRIES ;
 int IXGBE_82598_RX_PB_SIZE ;
 int IXGBE_82598_VFT_TBL_SIZE ;
 int ixgbe_check_mac_link_82598 ;
 int ixgbe_clear_vfta_82598 ;
 int ixgbe_clear_vmdq_82598 ;
 int ixgbe_enable_relaxed_ordering_82598 ;
 int ixgbe_enable_rx_dma_82598 ;
 int ixgbe_fc_enable_82598 ;
 int ixgbe_get_link_capabilities_82598 ;
 int ixgbe_get_media_type_82598 ;
 int ixgbe_get_pcie_msix_count_generic (struct ixgbe_hw*) ;
 int ixgbe_get_supported_physical_layer_82598 ;
 int ixgbe_init_ops_generic (struct ixgbe_hw*) ;
 int ixgbe_init_phy_ops_82598 ;
 int ixgbe_init_phy_ops_generic (struct ixgbe_hw*) ;
 int ixgbe_read_analog_reg8_82598 ;
 int ixgbe_read_i2c_eeprom_82598 ;
 int ixgbe_read_i2c_sff8472_82598 ;
 int ixgbe_reset_hw_82598 ;
 int ixgbe_set_lan_id_multi_port_pcie_82598 ;
 int ixgbe_set_rxpba_82598 ;
 int ixgbe_set_vfta_82598 ;
 int ixgbe_set_vmdq_82598 ;
 int ixgbe_setup_mac_link_82598 ;
 int ixgbe_start_hw_82598 ;
 int ixgbe_write_analog_reg8_82598 ;

s32 ixgbe_init_ops_82598(struct ixgbe_hw *hw)
{
 struct ixgbe_mac_info *mac = &hw->mac;
 struct ixgbe_phy_info *phy = &hw->phy;
 s32 ret_val;

 DEBUGFUNC("ixgbe_init_ops_82598");

 ret_val = ixgbe_init_phy_ops_generic(hw);
 ret_val = ixgbe_init_ops_generic(hw);


 phy->ops.init = ixgbe_init_phy_ops_82598;


 mac->ops.start_hw = ixgbe_start_hw_82598;
 mac->ops.enable_relaxed_ordering = ixgbe_enable_relaxed_ordering_82598;
 mac->ops.reset_hw = ixgbe_reset_hw_82598;
 mac->ops.get_media_type = ixgbe_get_media_type_82598;
 mac->ops.get_supported_physical_layer =
    ixgbe_get_supported_physical_layer_82598;
 mac->ops.read_analog_reg8 = ixgbe_read_analog_reg8_82598;
 mac->ops.write_analog_reg8 = ixgbe_write_analog_reg8_82598;
 mac->ops.set_lan_id = ixgbe_set_lan_id_multi_port_pcie_82598;
 mac->ops.enable_rx_dma = ixgbe_enable_rx_dma_82598;


 mac->ops.set_vmdq = ixgbe_set_vmdq_82598;
 mac->ops.clear_vmdq = ixgbe_clear_vmdq_82598;
 mac->ops.set_vfta = ixgbe_set_vfta_82598;
 mac->ops.set_vlvf = ((void*)0);
 mac->ops.clear_vfta = ixgbe_clear_vfta_82598;


 mac->ops.fc_enable = ixgbe_fc_enable_82598;

 mac->mcft_size = IXGBE_82598_MC_TBL_SIZE;
 mac->vft_size = IXGBE_82598_VFT_TBL_SIZE;
 mac->num_rar_entries = IXGBE_82598_RAR_ENTRIES;
 mac->rx_pb_size = IXGBE_82598_RX_PB_SIZE;
 mac->max_rx_queues = IXGBE_82598_MAX_RX_QUEUES;
 mac->max_tx_queues = IXGBE_82598_MAX_TX_QUEUES;
 mac->max_msix_vectors = ixgbe_get_pcie_msix_count_generic(hw);


 phy->ops.read_i2c_eeprom = ixgbe_read_i2c_eeprom_82598;
 phy->ops.read_i2c_sff8472 = ixgbe_read_i2c_sff8472_82598;


 mac->ops.check_link = ixgbe_check_mac_link_82598;
 mac->ops.setup_link = ixgbe_setup_mac_link_82598;
 mac->ops.flap_tx_laser = ((void*)0);
 mac->ops.get_link_capabilities = ixgbe_get_link_capabilities_82598;
 mac->ops.setup_rxpba = ixgbe_set_rxpba_82598;


 mac->ops.set_fw_drv_ver = ((void*)0);

 mac->ops.get_rtrup2tc = ((void*)0);

 return ret_val;
}
