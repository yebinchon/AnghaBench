
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int get_link_up_info; int clear_hw_cntrs; int led_off; int led_on; int rar_set; int read_mac_addr; int clear_vfta; int write_vfta; int update_mc_addr_list; int check_for_link; int setup_physical_interface; int setup_link; int init_hw; int reset_hw; int set_lan_id; int get_bus_info; } ;
struct e1000_mac_info {int mta_reg_count; TYPE_2__ ops; int rar_entry_count; } ;
struct TYPE_3__ {int media_type; } ;
struct e1000_hw {TYPE_1__ phy; struct e1000_mac_info mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_RAR_ENTRIES ;
 int E1000_SUCCESS ;
 int e1000_check_for_fiber_link_generic ;
 int e1000_clear_hw_cntrs_82542 ;
 int e1000_clear_vfta_generic ;
 int e1000_get_bus_info_82542 ;
 int e1000_get_speed_and_duplex_fiber_serdes_generic ;
 int e1000_init_hw_82542 ;
 int e1000_led_off_82542 ;
 int e1000_led_on_82542 ;
 int e1000_media_type_fiber ;
 int e1000_rar_set_82542 ;
 int e1000_read_mac_addr_82542 ;
 int e1000_reset_hw_82542 ;
 int e1000_set_lan_id_multi_port_pci ;
 int e1000_setup_fiber_serdes_link_generic ;
 int e1000_setup_link_82542 ;
 int e1000_update_mc_addr_list_generic ;
 int e1000_write_vfta_generic ;

__attribute__((used)) static s32 e1000_init_mac_params_82542(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;

 DEBUGFUNC("e1000_init_mac_params_82542");


 hw->phy.media_type = e1000_media_type_fiber;


 mac->mta_reg_count = 128;

 mac->rar_entry_count = E1000_RAR_ENTRIES;




 mac->ops.get_bus_info = e1000_get_bus_info_82542;

 mac->ops.set_lan_id = e1000_set_lan_id_multi_port_pci;

 mac->ops.reset_hw = e1000_reset_hw_82542;

 mac->ops.init_hw = e1000_init_hw_82542;

 mac->ops.setup_link = e1000_setup_link_82542;

 mac->ops.setup_physical_interface =
     e1000_setup_fiber_serdes_link_generic;

 mac->ops.check_for_link = e1000_check_for_fiber_link_generic;

 mac->ops.update_mc_addr_list = e1000_update_mc_addr_list_generic;

 mac->ops.write_vfta = e1000_write_vfta_generic;

 mac->ops.clear_vfta = e1000_clear_vfta_generic;

 mac->ops.read_mac_addr = e1000_read_mac_addr_82542;

 mac->ops.rar_set = e1000_rar_set_82542;

 mac->ops.led_on = e1000_led_on_82542;
 mac->ops.led_off = e1000_led_off_82542;

 mac->ops.clear_hw_cntrs = e1000_clear_hw_cntrs_82542;

 mac->ops.get_link_up_info =
    e1000_get_speed_and_duplex_fiber_serdes_generic;

 return E1000_SUCCESS;
}
