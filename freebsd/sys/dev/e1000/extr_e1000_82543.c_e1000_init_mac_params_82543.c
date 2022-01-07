
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clear_hw_cntrs; int led_off; int led_on; int read_mac_addr; int clear_vfta; int write_vfta; int update_mc_addr_list; int get_link_up_info; int check_for_link; int setup_physical_interface; int setup_link; int init_hw; int reset_hw; int set_lan_id; int get_bus_info; } ;
struct e1000_mac_info {int mta_reg_count; scalar_t__ type; TYPE_1__ ops; int rar_entry_count; } ;
struct TYPE_4__ {scalar_t__ media_type; } ;
struct e1000_hw {int device_id; TYPE_2__ phy; struct e1000_mac_info mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;


 int E1000_RAR_ENTRIES ;
 int E1000_SUCCESS ;
 int FALSE ;
 scalar_t__ e1000_82543 ;
 int e1000_check_for_copper_link_82543 ;
 int e1000_check_for_fiber_link_82543 ;
 int e1000_clear_hw_cntrs_82543 ;
 int e1000_clear_vfta_generic ;
 int e1000_get_bus_info_pci_generic ;
 int e1000_get_speed_and_duplex_copper_generic ;
 int e1000_get_speed_and_duplex_fiber_serdes_generic ;
 int e1000_init_hw_82543 ;
 int e1000_led_off_82543 ;
 int e1000_led_on_82543 ;
 scalar_t__ e1000_media_type_copper ;
 scalar_t__ e1000_media_type_fiber ;
 int e1000_read_mac_addr_82543 ;
 int e1000_reset_hw_82543 ;
 int e1000_set_lan_id_multi_port_pci ;
 int e1000_set_tbi_compatibility_82543 (struct e1000_hw*,int ) ;
 int e1000_setup_copper_link_82543 ;
 int e1000_setup_fiber_link_82543 ;
 int e1000_setup_link_82543 ;
 int e1000_update_mc_addr_list_generic ;
 int e1000_write_vfta_82543 ;

__attribute__((used)) static s32 e1000_init_mac_params_82543(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;

 DEBUGFUNC("e1000_init_mac_params_82543");


 switch (hw->device_id) {
 case 129:
 case 128:
  hw->phy.media_type = e1000_media_type_fiber;
  break;
 default:
  hw->phy.media_type = e1000_media_type_copper;
  break;
 }


 mac->mta_reg_count = 128;

 mac->rar_entry_count = E1000_RAR_ENTRIES;




 mac->ops.get_bus_info = e1000_get_bus_info_pci_generic;

 mac->ops.set_lan_id = e1000_set_lan_id_multi_port_pci;

 mac->ops.reset_hw = e1000_reset_hw_82543;

 mac->ops.init_hw = e1000_init_hw_82543;

 mac->ops.setup_link = e1000_setup_link_82543;

 mac->ops.setup_physical_interface =
  (hw->phy.media_type == e1000_media_type_copper)
   ? e1000_setup_copper_link_82543 : e1000_setup_fiber_link_82543;

 mac->ops.check_for_link =
  (hw->phy.media_type == e1000_media_type_copper)
   ? e1000_check_for_copper_link_82543
   : e1000_check_for_fiber_link_82543;

 mac->ops.get_link_up_info =
  (hw->phy.media_type == e1000_media_type_copper)
   ? e1000_get_speed_and_duplex_copper_generic
   : e1000_get_speed_and_duplex_fiber_serdes_generic;

 mac->ops.update_mc_addr_list = e1000_update_mc_addr_list_generic;

 mac->ops.write_vfta = e1000_write_vfta_82543;

 mac->ops.clear_vfta = e1000_clear_vfta_generic;

 mac->ops.read_mac_addr = e1000_read_mac_addr_82543;

 mac->ops.led_on = e1000_led_on_82543;
 mac->ops.led_off = e1000_led_off_82543;

 mac->ops.clear_hw_cntrs = e1000_clear_hw_cntrs_82543;


 if ((hw->mac.type != e1000_82543) ||
     (hw->phy.media_type == e1000_media_type_fiber))
  e1000_set_tbi_compatibility_82543(hw, FALSE);

 return E1000_SUCCESS;
}
