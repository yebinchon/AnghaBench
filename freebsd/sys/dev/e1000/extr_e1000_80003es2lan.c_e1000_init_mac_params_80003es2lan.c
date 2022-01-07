
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* set_lan_id ) (struct e1000_hw*) ;int get_link_up_info; int clear_hw_cntrs; int led_off; int led_on; int cleanup_led; int setup_led; int blink_led; int id_led_init; int read_mac_addr; int clear_vfta; int write_vfta; int update_mc_addr_list; int check_mng_mode; int setup_link; int init_hw; int reset_hw; int get_bus_info; int setup_physical_interface; int check_for_link; } ;
struct e1000_mac_info {int mta_reg_count; int arc_subsystem_valid; TYPE_2__ ops; int adaptive_ifs; void* has_fwsm; void* asf_firmware_present; int rar_entry_count; } ;
struct TYPE_3__ {int media_type; } ;
struct e1000_hw {int device_id; struct e1000_mac_info mac; TYPE_1__ phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;

 int E1000_FWSM ;
 int E1000_FWSM_MODE_MASK ;
 int E1000_RAR_ENTRIES ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int FALSE ;
 void* TRUE ;
 int e1000_blink_led_generic ;
 int e1000_check_for_copper_link_generic ;
 int e1000_check_for_serdes_link_generic ;
 int e1000_check_mng_mode_generic ;
 int e1000_cleanup_led_generic ;
 int e1000_clear_hw_cntrs_80003es2lan ;
 int e1000_clear_vfta_generic ;
 int e1000_get_bus_info_pcie_generic ;
 int e1000_get_link_up_info_80003es2lan ;
 int e1000_id_led_init_generic ;
 int e1000_init_hw_80003es2lan ;
 int e1000_led_off_generic ;
 int e1000_led_on_generic ;
 int e1000_media_type_copper ;
 int e1000_media_type_internal_serdes ;
 int e1000_read_mac_addr_80003es2lan ;
 int e1000_reset_hw_80003es2lan ;
 int e1000_setup_copper_link_80003es2lan ;
 int e1000_setup_fiber_serdes_link_generic ;
 int e1000_setup_led_generic ;
 int e1000_setup_link_generic ;
 int e1000_update_mc_addr_list_generic ;
 int e1000_write_vfta_generic ;
 int stub1 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_init_mac_params_80003es2lan(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;

 DEBUGFUNC("e1000_init_mac_params_80003es2lan");


 switch (hw->device_id) {
 case 128:
  hw->phy.media_type = e1000_media_type_internal_serdes;
  mac->ops.check_for_link = e1000_check_for_serdes_link_generic;
  mac->ops.setup_physical_interface =
     e1000_setup_fiber_serdes_link_generic;
  break;
 default:
  hw->phy.media_type = e1000_media_type_copper;
  mac->ops.check_for_link = e1000_check_for_copper_link_generic;
  mac->ops.setup_physical_interface =
     e1000_setup_copper_link_80003es2lan;
  break;
 }


 mac->mta_reg_count = 128;

 mac->rar_entry_count = E1000_RAR_ENTRIES;

 mac->asf_firmware_present = TRUE;

 mac->has_fwsm = TRUE;

 mac->arc_subsystem_valid = !!(E1000_READ_REG(hw, E1000_FWSM) &
          E1000_FWSM_MODE_MASK);

 mac->adaptive_ifs = FALSE;




 mac->ops.get_bus_info = e1000_get_bus_info_pcie_generic;

 mac->ops.reset_hw = e1000_reset_hw_80003es2lan;

 mac->ops.init_hw = e1000_init_hw_80003es2lan;

 mac->ops.setup_link = e1000_setup_link_generic;

 mac->ops.check_mng_mode = e1000_check_mng_mode_generic;

 mac->ops.update_mc_addr_list = e1000_update_mc_addr_list_generic;

 mac->ops.write_vfta = e1000_write_vfta_generic;

 mac->ops.clear_vfta = e1000_clear_vfta_generic;

 mac->ops.read_mac_addr = e1000_read_mac_addr_80003es2lan;

 mac->ops.id_led_init = e1000_id_led_init_generic;

 mac->ops.blink_led = e1000_blink_led_generic;

 mac->ops.setup_led = e1000_setup_led_generic;

 mac->ops.cleanup_led = e1000_cleanup_led_generic;

 mac->ops.led_on = e1000_led_on_generic;
 mac->ops.led_off = e1000_led_off_generic;

 mac->ops.clear_hw_cntrs = e1000_clear_hw_cntrs_80003es2lan;

 mac->ops.get_link_up_info = e1000_get_link_up_info_80003es2lan;


 hw->mac.ops.set_lan_id(hw);

 return E1000_SUCCESS;
}
