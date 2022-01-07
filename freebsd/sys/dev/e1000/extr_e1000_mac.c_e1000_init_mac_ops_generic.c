
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int validate_mdi_setting; int rar_set; int write_vfta; void* clear_vfta; int update_mc_addr_list; int check_mng_mode; int set_obff_timer; void* check_for_link; int get_link_up_info; void* setup_link; void* led_off; void* led_on; void* blink_led; void* setup_led; void* cleanup_led; void* clear_hw_cntrs; int config_collision_dist; int read_mac_addr; int set_lan_id; void* get_bus_info; void* setup_physical_interface; void* reset_hw; void* init_hw; void* init_params; } ;
struct e1000_mac_info {TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;


 int DEBUGFUNC (char*) ;
 int e1000_config_collision_dist_generic ;
 int e1000_null_link_info ;
 void* e1000_null_mac_generic ;
 int e1000_null_mng_mode ;
 void* e1000_null_ops_generic ;
 int e1000_null_set_obff_timer ;
 int e1000_null_update_mc ;
 int e1000_null_write_vfta ;
 int e1000_rar_set_generic ;
 int e1000_read_mac_addr_generic ;
 int e1000_set_lan_id_multi_port_pcie ;
 int e1000_validate_mdi_setting_generic ;

void e1000_init_mac_ops_generic(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 DEBUGFUNC("e1000_init_mac_ops_generic");


 mac->ops.init_params = e1000_null_ops_generic;
 mac->ops.init_hw = e1000_null_ops_generic;
 mac->ops.reset_hw = e1000_null_ops_generic;
 mac->ops.setup_physical_interface = e1000_null_ops_generic;
 mac->ops.get_bus_info = e1000_null_ops_generic;
 mac->ops.set_lan_id = e1000_set_lan_id_multi_port_pcie;
 mac->ops.read_mac_addr = e1000_read_mac_addr_generic;
 mac->ops.config_collision_dist = e1000_config_collision_dist_generic;
 mac->ops.clear_hw_cntrs = e1000_null_mac_generic;

 mac->ops.cleanup_led = e1000_null_ops_generic;
 mac->ops.setup_led = e1000_null_ops_generic;
 mac->ops.blink_led = e1000_null_ops_generic;
 mac->ops.led_on = e1000_null_ops_generic;
 mac->ops.led_off = e1000_null_ops_generic;

 mac->ops.setup_link = e1000_null_ops_generic;
 mac->ops.get_link_up_info = e1000_null_link_info;
 mac->ops.check_for_link = e1000_null_ops_generic;
 mac->ops.set_obff_timer = e1000_null_set_obff_timer;

 mac->ops.check_mng_mode = e1000_null_mng_mode;

 mac->ops.update_mc_addr_list = e1000_null_update_mc;
 mac->ops.clear_vfta = e1000_null_mac_generic;
 mac->ops.write_vfta = e1000_null_write_vfta;
 mac->ops.rar_set = e1000_rar_set_generic;
 mac->ops.validate_mdi_setting = e1000_validate_mdi_setting_generic;
}
