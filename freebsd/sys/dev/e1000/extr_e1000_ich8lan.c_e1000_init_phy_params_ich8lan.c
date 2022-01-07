
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int force_speed_duplex; int check_polarity; int get_info; int commit; void* write_reg; void* read_reg; int write_reg_locked; int read_reg_locked; int power_down; int power_up; int set_d3_lplu_state; int set_d0_lplu_state; int reset; int release; int get_cfg_done; int get_cable_length; int check_reset_block; int acquire; } ;
struct e1000_phy_info {int addr; int reset_delay_us; int id; TYPE_1__ ops; void* autoneg_mask; int type; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 void* AUTONEG_ADVERTISE_SPEED_DEFAULT ;

 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 void* E1000_ALL_NOT_GIG ;
 scalar_t__ E1000_ERR_PHY ;
 scalar_t__ E1000_SUCCESS ;




 int e1000_acquire_swflag_ich8lan ;
 int e1000_check_polarity_ife ;
 int e1000_check_polarity_igp ;
 int e1000_check_polarity_m88 ;
 int e1000_check_reset_block_ich8lan ;
 scalar_t__ e1000_determine_phy_address (struct e1000_hw*) ;
 int e1000_get_cable_length_igp_2 ;
 int e1000_get_cfg_done_ich8lan ;
 scalar_t__ e1000_get_phy_id (struct e1000_hw*) ;
 int e1000_get_phy_info_ife ;
 int e1000_get_phy_info_igp ;
 int e1000_get_phy_info_m88 ;
 scalar_t__ e1000_get_phy_type_from_id (int) ;
 int e1000_phy_bm ;
 int e1000_phy_force_speed_duplex_ife ;
 int e1000_phy_force_speed_duplex_igp ;
 int e1000_phy_force_speed_duplex_m88 ;
 int e1000_phy_hw_reset_ich8lan ;
 int e1000_phy_ife ;
 int e1000_phy_igp_3 ;
 int e1000_phy_sw_reset_generic ;
 scalar_t__ e1000_phy_unknown ;
 int e1000_power_down_phy_copper_ich8lan ;
 int e1000_power_up_phy_copper ;
 void* e1000_read_phy_reg_bm ;
 void* e1000_read_phy_reg_igp ;
 int e1000_read_phy_reg_igp_locked ;
 int e1000_release_swflag_ich8lan ;
 int e1000_set_d0_lplu_state_ich8lan ;
 int e1000_set_d3_lplu_state_ich8lan ;
 void* e1000_write_phy_reg_bm ;
 void* e1000_write_phy_reg_igp ;
 int e1000_write_phy_reg_igp_locked ;
 int msec_delay (int) ;

__attribute__((used)) static s32 e1000_init_phy_params_ich8lan(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 i = 0;

 DEBUGFUNC("e1000_init_phy_params_ich8lan");

 phy->addr = 1;
 phy->reset_delay_us = 100;

 phy->ops.acquire = e1000_acquire_swflag_ich8lan;
 phy->ops.check_reset_block = e1000_check_reset_block_ich8lan;
 phy->ops.get_cable_length = e1000_get_cable_length_igp_2;
 phy->ops.get_cfg_done = e1000_get_cfg_done_ich8lan;
 phy->ops.read_reg = e1000_read_phy_reg_igp;
 phy->ops.release = e1000_release_swflag_ich8lan;
 phy->ops.reset = e1000_phy_hw_reset_ich8lan;
 phy->ops.set_d0_lplu_state = e1000_set_d0_lplu_state_ich8lan;
 phy->ops.set_d3_lplu_state = e1000_set_d3_lplu_state_ich8lan;
 phy->ops.write_reg = e1000_write_phy_reg_igp;
 phy->ops.power_up = e1000_power_up_phy_copper;
 phy->ops.power_down = e1000_power_down_phy_copper_ich8lan;




 ret_val = e1000_determine_phy_address(hw);
 if (ret_val) {
  phy->ops.write_reg = e1000_write_phy_reg_bm;
  phy->ops.read_reg = e1000_read_phy_reg_bm;
  ret_val = e1000_determine_phy_address(hw);
  if (ret_val) {
   DEBUGOUT("Cannot determine PHY addr. Erroring out\n");
   return ret_val;
  }
 }

 phy->id = 0;
 while ((e1000_phy_unknown == e1000_get_phy_type_from_id(phy->id)) &&
        (i++ < 100)) {
  msec_delay(1);
  ret_val = e1000_get_phy_id(hw);
  if (ret_val)
   return ret_val;
 }


 switch (phy->id) {
 case 128:
  phy->type = e1000_phy_igp_3;
  phy->autoneg_mask = AUTONEG_ADVERTISE_SPEED_DEFAULT;
  phy->ops.read_reg_locked = e1000_read_phy_reg_igp_locked;
  phy->ops.write_reg_locked = e1000_write_phy_reg_igp_locked;
  phy->ops.get_info = e1000_get_phy_info_igp;
  phy->ops.check_polarity = e1000_check_polarity_igp;
  phy->ops.force_speed_duplex = e1000_phy_force_speed_duplex_igp;
  break;
 case 130:
 case 129:
 case 131:
  phy->type = e1000_phy_ife;
  phy->autoneg_mask = E1000_ALL_NOT_GIG;
  phy->ops.get_info = e1000_get_phy_info_ife;
  phy->ops.check_polarity = e1000_check_polarity_ife;
  phy->ops.force_speed_duplex = e1000_phy_force_speed_duplex_ife;
  break;
 case 132:
  phy->type = e1000_phy_bm;
  phy->autoneg_mask = AUTONEG_ADVERTISE_SPEED_DEFAULT;
  phy->ops.read_reg = e1000_read_phy_reg_bm;
  phy->ops.write_reg = e1000_write_phy_reg_bm;
  phy->ops.commit = e1000_phy_sw_reset_generic;
  phy->ops.get_info = e1000_get_phy_info_m88;
  phy->ops.check_polarity = e1000_check_polarity_m88;
  phy->ops.force_speed_duplex = e1000_phy_force_speed_duplex_m88;
  break;
 default:
  return -E1000_ERR_PHY;
  break;
 }

 return E1000_SUCCESS;
}
