
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int read_mac_addr; int rar_set; int update_mc_addr_list; int get_link_up_info; int check_for_link; int init_hw; int reset_hw; int get_bus_info; int setup_link; } ;
struct e1000_mac_info {int mta_reg_count; int rar_entry_count; TYPE_2__ ops; void* adaptive_ifs; void* arc_subsystem_valid; void* asf_firmware_present; } ;
struct TYPE_3__ {int media_type; } ;
struct e1000_hw {TYPE_1__ phy; struct e1000_mac_info mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_SUCCESS ;
 void* FALSE ;
 int e1000_check_for_link_vf ;
 int e1000_get_bus_info_pcie_vf ;
 int e1000_get_link_up_info_vf ;
 int e1000_init_hw_vf ;
 int e1000_media_type_unknown ;
 int e1000_rar_set_vf ;
 int e1000_read_mac_addr_vf ;
 int e1000_reset_hw_vf ;
 int e1000_setup_link_vf ;
 int e1000_update_mc_addr_list_vf ;

__attribute__((used)) static s32 e1000_init_mac_params_vf(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;

 DEBUGFUNC("e1000_init_mac_params_vf");







 hw->phy.media_type = e1000_media_type_unknown;


 mac->asf_firmware_present = FALSE;

 mac->arc_subsystem_valid = FALSE;

 mac->adaptive_ifs = FALSE;

 mac->mta_reg_count = 128;

 mac->rar_entry_count = 1;



 mac->ops.setup_link = e1000_setup_link_vf;

 mac->ops.get_bus_info = e1000_get_bus_info_pcie_vf;

 mac->ops.reset_hw = e1000_reset_hw_vf;

 mac->ops.init_hw = e1000_init_hw_vf;

 mac->ops.check_for_link = e1000_check_for_link_vf;

 mac->ops.get_link_up_info = e1000_get_link_up_info_vf;

 mac->ops.update_mc_addr_list = e1000_update_mc_addr_list_vf;

 mac->ops.rar_set = e1000_rar_set_vf;

 mac->ops.read_mac_addr = e1000_read_mac_addr_vf;


 return E1000_SUCCESS;
}
