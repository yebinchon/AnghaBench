
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int clear_hw_cntrs; int led_off; int led_on; int cleanup_led; int setup_led; int id_led_init; int read_mac_addr; int clear_vfta; int write_vfta; int update_mc_addr_list; int get_link_up_info; int check_for_link; int setup_physical_interface; int setup_link; int init_hw; int reset_hw; int set_lan_id; int get_bus_info; } ;
struct e1000_mac_info {int mta_reg_count; TYPE_2__ ops; int asf_firmware_present; int rar_entry_count; } ;
struct TYPE_3__ {int media_type; } ;
struct e1000_hw {TYPE_1__ phy; struct e1000_mac_info mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_RAR_ENTRIES ;
 int E1000_SUCCESS ;
 int TRUE ;
 int e1000_check_for_link_82541 ;
 int e1000_cleanup_led_82541 ;
 int e1000_clear_hw_cntrs_82541 ;
 int e1000_clear_vfta_generic ;
 int e1000_get_bus_info_pci_generic ;
 int e1000_get_link_up_info_82541 ;
 int e1000_id_led_init_generic ;
 int e1000_init_hw_82541 ;
 int e1000_led_off_generic ;
 int e1000_led_on_generic ;
 int e1000_media_type_copper ;
 int e1000_read_mac_addr_82541 ;
 int e1000_reset_hw_82541 ;
 int e1000_set_lan_id_single_port ;
 int e1000_setup_copper_link_82541 ;
 int e1000_setup_led_82541 ;
 int e1000_setup_link_generic ;
 int e1000_update_mc_addr_list_generic ;
 int e1000_write_vfta_generic ;

__attribute__((used)) static s32 e1000_init_mac_params_82541(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;

 DEBUGFUNC("e1000_init_mac_params_82541");


 hw->phy.media_type = e1000_media_type_copper;

 mac->mta_reg_count = 128;

 mac->rar_entry_count = E1000_RAR_ENTRIES;

 mac->asf_firmware_present = TRUE;




 mac->ops.get_bus_info = e1000_get_bus_info_pci_generic;

 mac->ops.set_lan_id = e1000_set_lan_id_single_port;

 mac->ops.reset_hw = e1000_reset_hw_82541;

 mac->ops.init_hw = e1000_init_hw_82541;

 mac->ops.setup_link = e1000_setup_link_generic;

 mac->ops.setup_physical_interface = e1000_setup_copper_link_82541;

 mac->ops.check_for_link = e1000_check_for_link_82541;

 mac->ops.get_link_up_info = e1000_get_link_up_info_82541;

 mac->ops.update_mc_addr_list = e1000_update_mc_addr_list_generic;

 mac->ops.write_vfta = e1000_write_vfta_generic;

 mac->ops.clear_vfta = e1000_clear_vfta_generic;

 mac->ops.read_mac_addr = e1000_read_mac_addr_82541;

 mac->ops.id_led_init = e1000_id_led_init_generic;

 mac->ops.setup_led = e1000_setup_led_82541;

 mac->ops.cleanup_led = e1000_cleanup_led_82541;

 mac->ops.led_on = e1000_led_on_generic;
 mac->ops.led_off = e1000_led_off_generic;

 mac->ops.clear_hw_cntrs = e1000_clear_hw_cntrs_82541;

 return E1000_SUCCESS;
}
