
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {void* blink_led; void* led_on; void* check_mng_mode; void* set_lan_id; int clear_hw_cntrs; int led_off; int cleanup_led; int setup_led; int id_led_init; int read_mac_addr; int clear_vfta; int write_vfta; int update_mc_addr_list; int setup_link; int init_hw; int reset_hw; int get_bus_info; void* get_link_up_info; int check_for_link; void* setup_physical_interface; } ;
struct e1000_mac_info {int mta_reg_count; int type; int arc_subsystem_valid; void* has_fwsm; TYPE_2__ ops; void* adaptive_ifs; void* asf_firmware_present; int rar_entry_count; } ;
struct TYPE_7__ {scalar_t__ smb_counter; } ;
struct TYPE_8__ {TYPE_3__ _82571; } ;
struct TYPE_5__ {int media_type; } ;
struct e1000_hw {int device_id; TYPE_4__ dev_spec; struct e1000_mac_info mac; TYPE_1__ phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;







 int E1000_FWSM ;
 int E1000_FWSM_MODE_MASK ;
 int E1000_RAR_ENTRIES ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_SWSM ;
 int E1000_SWSM2 ;
 int E1000_SWSM2_LOCK ;
 int E1000_SWSM_SMBI ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int FALSE ;
 void* TRUE ;





 void* e1000_blink_led_generic ;
 int e1000_check_for_copper_link_generic ;
 int e1000_check_for_fiber_link_generic ;
 int e1000_check_for_serdes_link_82571 ;
 void* e1000_check_mng_mode_82574 ;
 void* e1000_check_mng_mode_generic ;
 int e1000_cleanup_led_generic ;
 int e1000_clear_hw_cntrs_82571 ;
 int e1000_clear_vfta_82571 ;
 int e1000_get_bus_info_pcie_generic ;
 void* e1000_get_speed_and_duplex_copper_generic ;
 void* e1000_get_speed_and_duplex_fiber_serdes_generic ;
 int e1000_id_led_init_generic ;
 int e1000_init_hw_82571 ;
 int e1000_led_off_generic ;
 void* e1000_led_on_82574 ;
 void* e1000_led_on_generic ;
 int e1000_media_type_copper ;
 int e1000_media_type_fiber ;
 int e1000_media_type_internal_serdes ;
 int e1000_read_mac_addr_82571 ;
 int e1000_reset_hw_82571 ;
 void* e1000_set_lan_id_single_port ;
 void* e1000_setup_copper_link_82571 ;
 void* e1000_setup_fiber_serdes_link_82571 ;
 int e1000_setup_led_generic ;
 int e1000_setup_link_82571 ;
 int e1000_update_mc_addr_list_generic ;
 int e1000_write_vfta_generic ;

__attribute__((used)) static s32 e1000_init_mac_params_82571(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 u32 swsm = 0;
 u32 swsm2 = 0;
 bool force_clear_smbi = FALSE;

 DEBUGFUNC("e1000_init_mac_params_82571");


 switch (hw->device_id) {
 case 139:
 case 134:
 case 138:
  hw->phy.media_type = e1000_media_type_fiber;
  mac->ops.setup_physical_interface =
   e1000_setup_fiber_serdes_link_82571;
  mac->ops.check_for_link = e1000_check_for_fiber_link_generic;
  mac->ops.get_link_up_info =
   e1000_get_speed_and_duplex_fiber_serdes_generic;
  break;
 case 137:
 case 136:
 case 135:
 case 133:
  hw->phy.media_type = e1000_media_type_internal_serdes;
  mac->ops.setup_physical_interface =
   e1000_setup_fiber_serdes_link_82571;
  mac->ops.check_for_link = e1000_check_for_serdes_link_82571;
  mac->ops.get_link_up_info =
   e1000_get_speed_and_duplex_fiber_serdes_generic;
  break;
 default:
  hw->phy.media_type = e1000_media_type_copper;
  mac->ops.setup_physical_interface =
   e1000_setup_copper_link_82571;
  mac->ops.check_for_link = e1000_check_for_copper_link_generic;
  mac->ops.get_link_up_info =
   e1000_get_speed_and_duplex_copper_generic;
  break;
 }


 mac->mta_reg_count = 128;

 mac->rar_entry_count = E1000_RAR_ENTRIES;

 mac->asf_firmware_present = TRUE;

 mac->adaptive_ifs = TRUE;




 mac->ops.get_bus_info = e1000_get_bus_info_pcie_generic;

 mac->ops.reset_hw = e1000_reset_hw_82571;

 mac->ops.init_hw = e1000_init_hw_82571;

 mac->ops.setup_link = e1000_setup_link_82571;

 mac->ops.update_mc_addr_list = e1000_update_mc_addr_list_generic;

 mac->ops.write_vfta = e1000_write_vfta_generic;

 mac->ops.clear_vfta = e1000_clear_vfta_82571;

 mac->ops.read_mac_addr = e1000_read_mac_addr_82571;

 mac->ops.id_led_init = e1000_id_led_init_generic;

 mac->ops.setup_led = e1000_setup_led_generic;

 mac->ops.cleanup_led = e1000_cleanup_led_generic;

 mac->ops.led_off = e1000_led_off_generic;

 mac->ops.clear_hw_cntrs = e1000_clear_hw_cntrs_82571;


 switch (hw->mac.type) {
 case 130:
  mac->ops.set_lan_id = e1000_set_lan_id_single_port;
  mac->ops.check_mng_mode = e1000_check_mng_mode_generic;
  mac->ops.led_on = e1000_led_on_generic;
  mac->ops.blink_led = e1000_blink_led_generic;


  mac->has_fwsm = TRUE;



  mac->arc_subsystem_valid = !!(E1000_READ_REG(hw, E1000_FWSM) &
           E1000_FWSM_MODE_MASK);
  break;
 case 129:
 case 128:
  mac->ops.set_lan_id = e1000_set_lan_id_single_port;
  mac->ops.check_mng_mode = e1000_check_mng_mode_82574;
  mac->ops.led_on = e1000_led_on_82574;
  break;
 default:
  mac->ops.check_mng_mode = e1000_check_mng_mode_generic;
  mac->ops.led_on = e1000_led_on_generic;
  mac->ops.blink_led = e1000_blink_led_generic;


  mac->has_fwsm = TRUE;
  break;
 }







 switch (hw->mac.type) {
 case 132:
 case 131:
  swsm2 = E1000_READ_REG(hw, E1000_SWSM2);

  if (!(swsm2 & E1000_SWSM2_LOCK)) {

   E1000_WRITE_REG(hw, E1000_SWSM2, swsm2 |
     E1000_SWSM2_LOCK);
   force_clear_smbi = TRUE;
  } else {
   force_clear_smbi = FALSE;
  }
  break;
 default:
  force_clear_smbi = TRUE;
  break;
 }

 if (force_clear_smbi) {

  swsm = E1000_READ_REG(hw, E1000_SWSM);
  if (swsm & E1000_SWSM_SMBI) {




   DEBUGOUT("Please update your 82571 Bootagent\n");
  }
  E1000_WRITE_REG(hw, E1000_SWSM, swsm & ~E1000_SWSM_SMBI);
 }


  hw->dev_spec._82571.smb_counter = 0;

 return E1000_SUCCESS;
}
