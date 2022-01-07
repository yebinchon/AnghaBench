
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int init_params; } ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_5__ {int set_rlpml; int set_vfta; int * clear_vfta; int * disable_mc; int * enable_mc; int update_xcast_mode; int update_mc_addr_list; int * init_rx_addrs; int set_uc_addr; int set_rar; int * get_link_capabilities; int check_link; int setup_link; int negotiate_api_version; int * get_bus_info; int stop_adapter; int get_mac_addr; int * get_media_type; int * clear_hw_cntrs; int start_hw; int reset_hw; int init_hw; } ;
struct TYPE_6__ {int max_tx_queues; int max_rx_queues; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ mbx; TYPE_2__ mac; } ;
typedef int s32 ;


 int IXGBE_SUCCESS ;
 int ixgbe_check_mac_link_vf ;
 int ixgbe_get_mac_addr_vf ;
 int ixgbe_init_hw_vf ;
 int ixgbe_init_mbx_params_vf ;
 int ixgbe_reset_hw_vf ;
 int ixgbe_set_rar_vf ;
 int ixgbe_set_vfta_vf ;
 int ixgbe_setup_mac_link_vf ;
 int ixgbe_start_hw_vf ;
 int ixgbe_stop_adapter_vf ;
 int ixgbe_update_mc_addr_list_vf ;
 int ixgbevf_negotiate_api_version ;
 int ixgbevf_rlpml_set_vf ;
 int ixgbevf_set_uc_addr_vf ;
 int ixgbevf_update_xcast_mode ;

s32 ixgbe_init_ops_vf(struct ixgbe_hw *hw)
{

 hw->mac.ops.init_hw = ixgbe_init_hw_vf;
 hw->mac.ops.reset_hw = ixgbe_reset_hw_vf;
 hw->mac.ops.start_hw = ixgbe_start_hw_vf;

 hw->mac.ops.clear_hw_cntrs = ((void*)0);
 hw->mac.ops.get_media_type = ((void*)0);
 hw->mac.ops.get_mac_addr = ixgbe_get_mac_addr_vf;
 hw->mac.ops.stop_adapter = ixgbe_stop_adapter_vf;
 hw->mac.ops.get_bus_info = ((void*)0);
 hw->mac.ops.negotiate_api_version = ixgbevf_negotiate_api_version;


 hw->mac.ops.setup_link = ixgbe_setup_mac_link_vf;
 hw->mac.ops.check_link = ixgbe_check_mac_link_vf;
 hw->mac.ops.get_link_capabilities = ((void*)0);


 hw->mac.ops.set_rar = ixgbe_set_rar_vf;
 hw->mac.ops.set_uc_addr = ixgbevf_set_uc_addr_vf;
 hw->mac.ops.init_rx_addrs = ((void*)0);
 hw->mac.ops.update_mc_addr_list = ixgbe_update_mc_addr_list_vf;
 hw->mac.ops.update_xcast_mode = ixgbevf_update_xcast_mode;
 hw->mac.ops.enable_mc = ((void*)0);
 hw->mac.ops.disable_mc = ((void*)0);
 hw->mac.ops.clear_vfta = ((void*)0);
 hw->mac.ops.set_vfta = ixgbe_set_vfta_vf;
 hw->mac.ops.set_rlpml = ixgbevf_rlpml_set_vf;

 hw->mac.max_tx_queues = 1;
 hw->mac.max_rx_queues = 1;

 hw->mbx.ops.init_params = ixgbe_init_mbx_params_vf;

 return IXGBE_SUCCESS;
}
