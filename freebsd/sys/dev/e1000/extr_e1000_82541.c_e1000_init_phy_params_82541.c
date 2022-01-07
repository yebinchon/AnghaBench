
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int power_down; int power_up; int write_reg; int set_d3_lplu_state; int reset; int read_reg; int get_info; int get_cfg_done; int get_cable_length; int force_speed_duplex; int check_polarity; } ;
struct e1000_phy_info {int addr; int reset_delay_us; scalar_t__ id; TYPE_1__ ops; int type; int autoneg_mask; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef int s32 ;


 int AUTONEG_ADVERTISE_SPEED_DEFAULT ;
 int DEBUGFUNC (char*) ;
 int E1000_ERR_PHY ;
 scalar_t__ IGP01E1000_I_PHY_ID ;
 int e1000_check_polarity_igp ;
 int e1000_get_cable_length_igp_82541 ;
 int e1000_get_cfg_done_generic ;
 int e1000_get_phy_id (struct e1000_hw*) ;
 int e1000_get_phy_info_igp ;
 int e1000_phy_force_speed_duplex_igp ;
 int e1000_phy_hw_reset_82541 ;
 int e1000_phy_igp ;
 int e1000_power_down_phy_copper_82541 ;
 int e1000_power_up_phy_copper ;
 int e1000_read_phy_reg_igp ;
 int e1000_set_d3_lplu_state_82541 ;
 int e1000_write_phy_reg_igp ;

__attribute__((used)) static s32 e1000_init_phy_params_82541(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;

 DEBUGFUNC("e1000_init_phy_params_82541");

 phy->addr = 1;
 phy->autoneg_mask = AUTONEG_ADVERTISE_SPEED_DEFAULT;
 phy->reset_delay_us = 10000;
 phy->type = e1000_phy_igp;


 phy->ops.check_polarity = e1000_check_polarity_igp;
 phy->ops.force_speed_duplex = e1000_phy_force_speed_duplex_igp;
 phy->ops.get_cable_length = e1000_get_cable_length_igp_82541;
 phy->ops.get_cfg_done = e1000_get_cfg_done_generic;
 phy->ops.get_info = e1000_get_phy_info_igp;
 phy->ops.read_reg = e1000_read_phy_reg_igp;
 phy->ops.reset = e1000_phy_hw_reset_82541;
 phy->ops.set_d3_lplu_state = e1000_set_d3_lplu_state_82541;
 phy->ops.write_reg = e1000_write_phy_reg_igp;
 phy->ops.power_up = e1000_power_up_phy_copper;
 phy->ops.power_down = e1000_power_down_phy_copper_82541;

 ret_val = e1000_get_phy_id(hw);
 if (ret_val)
  goto out;


 if (phy->id != IGP01E1000_I_PHY_ID) {
  ret_val = -E1000_ERR_PHY;
  goto out;
 }

out:
 return ret_val;
}
