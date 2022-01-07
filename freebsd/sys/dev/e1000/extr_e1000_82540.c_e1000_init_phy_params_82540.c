
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int power_down; int power_up; int get_info; int write_reg; int reset; int read_reg; int get_cfg_done; int get_cable_length; int force_speed_duplex; int commit; int check_polarity; } ;
struct e1000_phy_info {int addr; int reset_delay_us; int id; TYPE_1__ ops; int type; int autoneg_mask; } ;
struct TYPE_4__ {int type; } ;
struct e1000_hw {TYPE_2__ mac; struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int AUTONEG_ADVERTISE_SPEED_DEFAULT ;
 scalar_t__ E1000_ERR_PHY ;
 int M88E1011_I_PHY_ID ;





 int e1000_check_polarity_m88 ;
 int e1000_get_cable_length_m88 ;
 int e1000_get_cfg_done_generic ;
 scalar_t__ e1000_get_phy_id (struct e1000_hw*) ;
 int e1000_get_phy_info_m88 ;
 int e1000_phy_force_speed_duplex_m88 ;
 int e1000_phy_hw_reset_generic ;
 int e1000_phy_m88 ;
 int e1000_phy_sw_reset_generic ;
 int e1000_power_down_phy_copper_82540 ;
 int e1000_power_up_phy_copper ;
 int e1000_read_phy_reg_m88 ;
 int e1000_write_phy_reg_m88 ;

__attribute__((used)) static s32 e1000_init_phy_params_82540(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;

 phy->addr = 1;
 phy->autoneg_mask = AUTONEG_ADVERTISE_SPEED_DEFAULT;
 phy->reset_delay_us = 10000;
 phy->type = e1000_phy_m88;


 phy->ops.check_polarity = e1000_check_polarity_m88;
 phy->ops.commit = e1000_phy_sw_reset_generic;
 phy->ops.force_speed_duplex = e1000_phy_force_speed_duplex_m88;
 phy->ops.get_cable_length = e1000_get_cable_length_m88;
 phy->ops.get_cfg_done = e1000_get_cfg_done_generic;
 phy->ops.read_reg = e1000_read_phy_reg_m88;
 phy->ops.reset = e1000_phy_hw_reset_generic;
 phy->ops.write_reg = e1000_write_phy_reg_m88;
 phy->ops.get_info = e1000_get_phy_info_m88;
 phy->ops.power_up = e1000_power_up_phy_copper;
 phy->ops.power_down = e1000_power_down_phy_copper_82540;

 ret_val = e1000_get_phy_id(hw);
 if (ret_val)
  goto out;


 switch (hw->mac.type) {
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  if (phy->id == M88E1011_I_PHY_ID)
   break;

 default:
  ret_val = -E1000_ERR_PHY;
  goto out;
  break;
 }

out:
 return ret_val;
}
