
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int set_d3_lplu_state; int set_d0_lplu_state; void* release; void* acquire; int write_reg; int read_reg; void* get_cable_length; void* force_speed_duplex; void* commit; void* check_polarity; void* get_info; void* get_cfg_done; int power_down; int power_up; int reset; int check_reset_block; } ;
struct e1000_phy_info {scalar_t__ media_type; int addr; int reset_delay_us; int id; TYPE_1__ ops; int type; int autoneg_mask; } ;
struct TYPE_4__ {int type; } ;
struct e1000_hw {TYPE_2__ mac; struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int AUTONEG_ADVERTISE_SPEED_DEFAULT ;
 int BME1000_E_PHY_ID_R2 ;
 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,int ) ;
 scalar_t__ E1000_ERR_PHY ;
 scalar_t__ E1000_SUCCESS ;
 int IGP01E1000_I_PHY_ID ;
 int M88E1111_I_PHY_ID ;





 void* e1000_check_polarity_igp ;
 void* e1000_check_polarity_m88 ;
 int e1000_check_reset_block_generic ;
 void* e1000_get_cable_length_igp_2 ;
 void* e1000_get_cable_length_m88 ;
 void* e1000_get_cfg_done_82571 ;
 void* e1000_get_cfg_done_generic ;
 void* e1000_get_hw_semaphore ;
 void* e1000_get_hw_semaphore_82574 ;
 scalar_t__ e1000_get_phy_id_82571 (struct e1000_hw*) ;
 void* e1000_get_phy_info_igp ;
 void* e1000_get_phy_info_m88 ;
 scalar_t__ e1000_media_type_copper ;
 int e1000_phy_bm ;
 void* e1000_phy_force_speed_duplex_igp ;
 void* e1000_phy_force_speed_duplex_m88 ;
 int e1000_phy_hw_reset_generic ;
 int e1000_phy_igp_2 ;
 int e1000_phy_m88 ;
 int e1000_phy_none ;
 void* e1000_phy_sw_reset_generic ;
 int e1000_power_down_phy_copper_82571 ;
 int e1000_power_up_phy_copper ;
 void* e1000_put_hw_semaphore ;
 void* e1000_put_hw_semaphore_82574 ;
 int e1000_read_phy_reg_bm2 ;
 int e1000_read_phy_reg_igp ;
 int e1000_read_phy_reg_m88 ;
 int e1000_set_d0_lplu_state_82571 ;
 int e1000_set_d0_lplu_state_82574 ;
 int e1000_set_d3_lplu_state_82574 ;
 int e1000_set_d3_lplu_state_generic ;
 int e1000_write_phy_reg_bm2 ;
 int e1000_write_phy_reg_igp ;
 int e1000_write_phy_reg_m88 ;

__attribute__((used)) static s32 e1000_init_phy_params_82571(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;

 DEBUGFUNC("e1000_init_phy_params_82571");

 if (hw->phy.media_type != e1000_media_type_copper) {
  phy->type = e1000_phy_none;
  return E1000_SUCCESS;
 }

 phy->addr = 1;
 phy->autoneg_mask = AUTONEG_ADVERTISE_SPEED_DEFAULT;
 phy->reset_delay_us = 100;

 phy->ops.check_reset_block = e1000_check_reset_block_generic;
 phy->ops.reset = e1000_phy_hw_reset_generic;
 phy->ops.set_d0_lplu_state = e1000_set_d0_lplu_state_82571;
 phy->ops.set_d3_lplu_state = e1000_set_d3_lplu_state_generic;
 phy->ops.power_up = e1000_power_up_phy_copper;
 phy->ops.power_down = e1000_power_down_phy_copper_82571;

 switch (hw->mac.type) {
 case 132:
 case 131:
  phy->type = e1000_phy_igp_2;
  phy->ops.get_cfg_done = e1000_get_cfg_done_82571;
  phy->ops.get_info = e1000_get_phy_info_igp;
  phy->ops.check_polarity = e1000_check_polarity_igp;
  phy->ops.force_speed_duplex = e1000_phy_force_speed_duplex_igp;
  phy->ops.get_cable_length = e1000_get_cable_length_igp_2;
  phy->ops.read_reg = e1000_read_phy_reg_igp;
  phy->ops.write_reg = e1000_write_phy_reg_igp;
  phy->ops.acquire = e1000_get_hw_semaphore;
  phy->ops.release = e1000_put_hw_semaphore;
  break;
 case 130:
  phy->type = e1000_phy_m88;
  phy->ops.get_cfg_done = e1000_get_cfg_done_generic;
  phy->ops.get_info = e1000_get_phy_info_m88;
  phy->ops.check_polarity = e1000_check_polarity_m88;
  phy->ops.commit = e1000_phy_sw_reset_generic;
  phy->ops.force_speed_duplex = e1000_phy_force_speed_duplex_m88;
  phy->ops.get_cable_length = e1000_get_cable_length_m88;
  phy->ops.read_reg = e1000_read_phy_reg_m88;
  phy->ops.write_reg = e1000_write_phy_reg_m88;
  phy->ops.acquire = e1000_get_hw_semaphore;
  phy->ops.release = e1000_put_hw_semaphore;
  break;
 case 129:
 case 128:

  phy->type = e1000_phy_bm;
  phy->ops.get_cfg_done = e1000_get_cfg_done_generic;
  phy->ops.get_info = e1000_get_phy_info_m88;
  phy->ops.check_polarity = e1000_check_polarity_m88;
  phy->ops.commit = e1000_phy_sw_reset_generic;
  phy->ops.force_speed_duplex = e1000_phy_force_speed_duplex_m88;
  phy->ops.get_cable_length = e1000_get_cable_length_m88;
  phy->ops.read_reg = e1000_read_phy_reg_bm2;
  phy->ops.write_reg = e1000_write_phy_reg_bm2;
  phy->ops.acquire = e1000_get_hw_semaphore_82574;
  phy->ops.release = e1000_put_hw_semaphore_82574;
  phy->ops.set_d0_lplu_state = e1000_set_d0_lplu_state_82574;
  phy->ops.set_d3_lplu_state = e1000_set_d3_lplu_state_82574;
  break;
 default:
  return -E1000_ERR_PHY;
  break;
 }


 ret_val = e1000_get_phy_id_82571(hw);
 if (ret_val) {
  DEBUGOUT("Error getting PHY ID\n");
  return ret_val;
 }


 switch (hw->mac.type) {
 case 132:
 case 131:
  if (phy->id != IGP01E1000_I_PHY_ID)
   ret_val = -E1000_ERR_PHY;
  break;
 case 130:
  if (phy->id != M88E1111_I_PHY_ID)
   ret_val = -E1000_ERR_PHY;
  break;
 case 129:
 case 128:
  if (phy->id != BME1000_E_PHY_ID_R2)
   ret_val = -E1000_ERR_PHY;
  break;
 default:
  ret_val = -E1000_ERR_PHY;
  break;
 }

 if (ret_val)
  DEBUGOUT1("PHY ID unknown: type = 0x%08x\n", phy->id);

 return ret_val;
}
