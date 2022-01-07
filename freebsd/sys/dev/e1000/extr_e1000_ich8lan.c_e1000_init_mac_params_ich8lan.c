
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int set_obff_timer; int setup_physical_interface; int rar_set; int led_off; int led_on; int cleanup_led; int setup_led; int id_led_init; int check_mng_mode; int update_mc_addr_list; int blink_led; int clear_hw_cntrs; int get_link_up_info; int check_for_link; int setup_link; int init_hw; int reset_hw; int set_lan_id; int get_bus_info; } ;
struct e1000_mac_info {int mta_reg_count; int type; TYPE_2__ ops; scalar_t__ rar_entry_count; void* adaptive_ifs; int arc_subsystem_valid; void* has_fwsm; void* asf_firmware_present; } ;
struct TYPE_3__ {int media_type; } ;
struct e1000_hw {TYPE_1__ phy; struct e1000_mac_info mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ E1000_ICH_RAR_ENTRIES ;
 scalar_t__ E1000_PCH2_RAR_ENTRIES ;
 scalar_t__ E1000_PCH_LPT_RAR_ENTRIES ;
 int E1000_SUCCESS ;
 int FALSE ;
 void* TRUE ;
 int e1000_blink_led_generic ;
 int e1000_check_for_copper_link_ich8lan ;
 int e1000_check_mng_mode_ich8lan ;
 int e1000_check_mng_mode_pchlan ;
 int e1000_cleanup_led_ich8lan ;
 int e1000_cleanup_led_pchlan ;
 int e1000_clear_hw_cntrs_ich8lan ;
 int e1000_get_bus_info_ich8lan ;
 int e1000_get_link_up_info_ich8lan ;



 int e1000_id_led_init_generic ;
 int e1000_id_led_init_pchlan ;
 int e1000_init_hw_ich8lan ;
 int e1000_led_off_ich8lan ;
 int e1000_led_off_pchlan ;
 int e1000_led_on_ich8lan ;
 int e1000_led_on_pchlan ;
 int e1000_media_type_copper ;





 int e1000_rar_set_pch2lan ;
 int e1000_rar_set_pch_lpt ;
 int e1000_reset_hw_ich8lan ;
 int e1000_set_kmrn_lock_loss_workaround_ich8lan (struct e1000_hw*,void*) ;
 int e1000_set_lan_id_single_port ;
 int e1000_set_obff_timer_pch_lpt ;
 int e1000_setup_copper_link_ich8lan ;
 int e1000_setup_copper_link_pch_lpt ;
 int e1000_setup_led_generic ;
 int e1000_setup_led_pchlan ;
 int e1000_setup_link_ich8lan ;
 int e1000_update_mc_addr_list_generic ;
 int e1000_update_mc_addr_list_pch2lan ;

__attribute__((used)) static s32 e1000_init_mac_params_ich8lan(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;

 DEBUGFUNC("e1000_init_mac_params_ich8lan");


 hw->phy.media_type = e1000_media_type_copper;


 mac->mta_reg_count = 32;

 mac->rar_entry_count = E1000_ICH_RAR_ENTRIES;
 if (mac->type == 134)
  mac->rar_entry_count--;

 mac->asf_firmware_present = TRUE;

 mac->has_fwsm = TRUE;

 mac->arc_subsystem_valid = FALSE;

 mac->adaptive_ifs = TRUE;




 mac->ops.get_bus_info = e1000_get_bus_info_ich8lan;

 mac->ops.set_lan_id = e1000_set_lan_id_single_port;

 mac->ops.reset_hw = e1000_reset_hw_ich8lan;

 mac->ops.init_hw = e1000_init_hw_ich8lan;

 mac->ops.setup_link = e1000_setup_link_ich8lan;

 mac->ops.setup_physical_interface = e1000_setup_copper_link_ich8lan;

 mac->ops.check_for_link = e1000_check_for_copper_link_ich8lan;

 mac->ops.get_link_up_info = e1000_get_link_up_info_ich8lan;

 mac->ops.update_mc_addr_list = e1000_update_mc_addr_list_generic;

 mac->ops.clear_hw_cntrs = e1000_clear_hw_cntrs_ich8lan;


 switch (mac->type) {
 case 134:
 case 133:
 case 135:

  mac->ops.check_mng_mode = e1000_check_mng_mode_ich8lan;

  mac->ops.id_led_init = e1000_id_led_init_generic;

  mac->ops.blink_led = e1000_blink_led_generic;

  mac->ops.setup_led = e1000_setup_led_generic;

  mac->ops.cleanup_led = e1000_cleanup_led_ich8lan;

  mac->ops.led_on = e1000_led_on_ich8lan;
  mac->ops.led_off = e1000_led_off_ich8lan;
  break;
 case 132:
  mac->rar_entry_count = E1000_PCH2_RAR_ENTRIES;
  mac->ops.rar_set = e1000_rar_set_pch2lan;

 case 130:
 case 129:
 case 131:

  mac->ops.update_mc_addr_list =
   e1000_update_mc_addr_list_pch2lan;

 case 128:

  mac->ops.check_mng_mode = e1000_check_mng_mode_pchlan;

  mac->ops.id_led_init = e1000_id_led_init_pchlan;

  mac->ops.setup_led = e1000_setup_led_pchlan;

  mac->ops.cleanup_led = e1000_cleanup_led_pchlan;

  mac->ops.led_on = e1000_led_on_pchlan;
  mac->ops.led_off = e1000_led_off_pchlan;
  break;
 default:
  break;
 }

 if (mac->type >= 130) {
  mac->rar_entry_count = E1000_PCH_LPT_RAR_ENTRIES;
  mac->ops.rar_set = e1000_rar_set_pch_lpt;
  mac->ops.setup_physical_interface = e1000_setup_copper_link_pch_lpt;
  mac->ops.set_obff_timer = e1000_set_obff_timer_pch_lpt;
 }


 if (mac->type == 134)
  e1000_set_kmrn_lock_loss_workaround_ich8lan(hw, TRUE);

 return E1000_SUCCESS;
}
