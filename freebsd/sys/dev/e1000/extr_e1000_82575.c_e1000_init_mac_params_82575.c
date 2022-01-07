
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int (* set_lan_id ) (struct e1000_hw*) ;int release_swfw_sync; int acquire_swfw_sync; int get_link_up_info; int clear_hw_cntrs; int led_off; int led_on; int cleanup_led; int setup_led; int blink_led; int id_led_init; int validate_mdi_setting; int clear_vfta; int write_vfta; int update_mc_addr_list; int config_collision_dist; int read_mac_addr; int check_for_link; int power_up_serdes; int shutdown_serdes; int setup_physical_interface; int setup_link; int init_hw; int reset_hw; int get_bus_info; } ;
struct e1000_mac_info {int mta_reg_count; int uta_reg_count; scalar_t__ type; int arc_subsystem_valid; TYPE_3__ ops; void* has_fwsm; void* asf_firmware_present; int rar_entry_count; } ;
struct TYPE_5__ {scalar_t__ media_type; } ;
struct e1000_dev_spec_82575 {void* clear_semaphore_once; int eee_disable; } ;
struct TYPE_4__ {struct e1000_dev_spec_82575 _82575; } ;
struct e1000_hw {struct e1000_mac_info mac; TYPE_2__ phy; TYPE_1__ dev_spec; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_FWSM ;
 int E1000_FWSM_MODE_MASK ;
 int E1000_RAR_ENTRIES_82575 ;
 int E1000_RAR_ENTRIES_82576 ;
 int E1000_RAR_ENTRIES_82580 ;
 int E1000_RAR_ENTRIES_I350 ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int FALSE ;
 void* TRUE ;
 scalar_t__ e1000_82575 ;
 scalar_t__ e1000_82576 ;
 scalar_t__ e1000_82580 ;
 int e1000_acquire_swfw_sync ;
 int e1000_blink_led_generic ;
 int e1000_check_for_link_82575 ;
 int e1000_cleanup_led_generic ;
 int e1000_clear_hw_cntrs_82575 ;
 int e1000_clear_vfta_generic ;
 int e1000_clear_vfta_i350 ;
 int e1000_config_collision_dist_82575 ;
 int e1000_get_bus_info_pcie_generic ;
 int e1000_get_link_up_info_82575 ;
 int e1000_get_media_type_82575 (struct e1000_hw*) ;
 scalar_t__ e1000_i210 ;
 scalar_t__ e1000_i211 ;
 scalar_t__ e1000_i350 ;
 scalar_t__ e1000_i354 ;
 int e1000_id_led_init_generic ;
 int e1000_init_hw_82575 ;
 int e1000_init_hw_i210 ;
 int e1000_led_off_generic ;
 int e1000_led_on_generic ;
 scalar_t__ e1000_media_type_copper ;
 int e1000_power_up_serdes_link_82575 ;
 int e1000_read_mac_addr_82575 ;
 int e1000_release_swfw_sync ;
 int e1000_reset_hw_82575 ;
 int e1000_reset_hw_82580 ;
 int e1000_setup_copper_link_82575 ;
 int e1000_setup_led_generic ;
 int e1000_setup_link_generic ;
 int e1000_setup_serdes_link_82575 ;
 int e1000_shutdown_serdes_link_82575 ;
 int e1000_update_mc_addr_list_generic ;
 int e1000_validate_mdi_setting_crossover_generic ;
 int e1000_write_vfta_generic ;
 int e1000_write_vfta_i350 ;
 int stub1 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_init_mac_params_82575(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 struct e1000_dev_spec_82575 *dev_spec = &hw->dev_spec._82575;

 DEBUGFUNC("e1000_init_mac_params_82575");


 e1000_get_media_type_82575(hw);

 mac->mta_reg_count = 128;

 mac->uta_reg_count = (hw->mac.type == e1000_82575) ? 0 : 128;

 mac->rar_entry_count = E1000_RAR_ENTRIES_82575;
 if (mac->type == e1000_82576)
  mac->rar_entry_count = E1000_RAR_ENTRIES_82576;
 if (mac->type == e1000_82580)
  mac->rar_entry_count = E1000_RAR_ENTRIES_82580;
 if (mac->type == e1000_i350 || mac->type == e1000_i354)
  mac->rar_entry_count = E1000_RAR_ENTRIES_I350;


 if (mac->type >= e1000_i350)
  dev_spec->eee_disable = FALSE;


 if (mac->type >= e1000_i210)
  dev_spec->clear_semaphore_once = TRUE;


 mac->asf_firmware_present = TRUE;

 mac->has_fwsm = TRUE;

 mac->arc_subsystem_valid =
  !!(E1000_READ_REG(hw, E1000_FWSM) & E1000_FWSM_MODE_MASK);




 mac->ops.get_bus_info = e1000_get_bus_info_pcie_generic;

 if (mac->type >= e1000_82580)
  mac->ops.reset_hw = e1000_reset_hw_82580;
 else
 mac->ops.reset_hw = e1000_reset_hw_82575;

 if ((mac->type == e1000_i210) || (mac->type == e1000_i211))
  mac->ops.init_hw = e1000_init_hw_i210;
 else
 mac->ops.init_hw = e1000_init_hw_82575;

 mac->ops.setup_link = e1000_setup_link_generic;

 mac->ops.setup_physical_interface =
  (hw->phy.media_type == e1000_media_type_copper)
  ? e1000_setup_copper_link_82575 : e1000_setup_serdes_link_82575;

 mac->ops.shutdown_serdes = e1000_shutdown_serdes_link_82575;

 mac->ops.power_up_serdes = e1000_power_up_serdes_link_82575;

 mac->ops.check_for_link = e1000_check_for_link_82575;

 mac->ops.read_mac_addr = e1000_read_mac_addr_82575;

 mac->ops.config_collision_dist = e1000_config_collision_dist_82575;

 mac->ops.update_mc_addr_list = e1000_update_mc_addr_list_generic;
 if (hw->mac.type == e1000_i350 || mac->type == e1000_i354) {

  mac->ops.write_vfta = e1000_write_vfta_i350;

  mac->ops.clear_vfta = e1000_clear_vfta_i350;
 } else {

  mac->ops.write_vfta = e1000_write_vfta_generic;

  mac->ops.clear_vfta = e1000_clear_vfta_generic;
 }
 if (hw->mac.type >= e1000_82580)
  mac->ops.validate_mdi_setting =
    e1000_validate_mdi_setting_crossover_generic;

 mac->ops.id_led_init = e1000_id_led_init_generic;

 mac->ops.blink_led = e1000_blink_led_generic;

 mac->ops.setup_led = e1000_setup_led_generic;

 mac->ops.cleanup_led = e1000_cleanup_led_generic;

 mac->ops.led_on = e1000_led_on_generic;
 mac->ops.led_off = e1000_led_off_generic;

 mac->ops.clear_hw_cntrs = e1000_clear_hw_cntrs_82575;

 mac->ops.get_link_up_info = e1000_get_link_up_info_82575;

 mac->ops.acquire_swfw_sync = e1000_acquire_swfw_sync;
 mac->ops.release_swfw_sync = e1000_release_swfw_sync;


 hw->mac.ops.set_lan_id(hw);

 return E1000_SUCCESS;
}
