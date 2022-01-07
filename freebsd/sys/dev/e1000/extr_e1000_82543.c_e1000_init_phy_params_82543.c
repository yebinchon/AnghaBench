
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* reset ) (struct e1000_hw*) ;int get_info; int write_reg; int read_reg; int get_cfg_done; int get_cable_length; int force_speed_duplex; int commit; int check_polarity; int power_down; int power_up; } ;
struct e1000_phy_info {scalar_t__ media_type; int addr; int reset_delay_us; int id; TYPE_1__ ops; int type; int autoneg_mask; } ;
struct TYPE_4__ {int type; } ;
struct e1000_hw {TYPE_2__ mac; struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int AUTONEG_ADVERTISE_SPEED_DEFAULT ;
 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ E1000_ERR_PHY ;
 scalar_t__ E1000_SUCCESS ;
 int M88E1000_E_PHY_ID ;
 int M88E1000_I_PHY_ID ;


 int e1000_check_polarity_m88 ;
 int e1000_get_cable_length_m88 ;
 int e1000_get_cfg_done_generic ;
 scalar_t__ e1000_get_phy_id (struct e1000_hw*) ;
 int e1000_get_phy_info_m88 ;
 int e1000_init_phy_disabled_82543 (struct e1000_hw*) ;
 scalar_t__ e1000_media_type_copper ;
 int e1000_phy_force_speed_duplex_82543 ;
 scalar_t__ e1000_phy_hw_reset_82543 (struct e1000_hw*) ;
 scalar_t__ e1000_phy_hw_reset_generic (struct e1000_hw*) ;
 int e1000_phy_m88 ;
 int e1000_phy_none ;
 int e1000_phy_sw_reset_generic ;
 int e1000_power_down_phy_copper ;
 int e1000_power_up_phy_copper ;
 int e1000_read_phy_reg_82543 ;
 int e1000_read_phy_reg_m88 ;
 int e1000_write_phy_reg_82543 ;
 int e1000_write_phy_reg_m88 ;
 int msec_delay (int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_init_phy_params_82543(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val = E1000_SUCCESS;

 DEBUGFUNC("e1000_init_phy_params_82543");

 if (hw->phy.media_type != e1000_media_type_copper) {
  phy->type = e1000_phy_none;
  goto out;
 } else {
  phy->ops.power_up = e1000_power_up_phy_copper;
  phy->ops.power_down = e1000_power_down_phy_copper;
 }

 phy->addr = 1;
 phy->autoneg_mask = AUTONEG_ADVERTISE_SPEED_DEFAULT;
 phy->reset_delay_us = 10000;
 phy->type = e1000_phy_m88;


 phy->ops.check_polarity = e1000_check_polarity_m88;
 phy->ops.commit = e1000_phy_sw_reset_generic;
 phy->ops.force_speed_duplex = e1000_phy_force_speed_duplex_82543;
 phy->ops.get_cable_length = e1000_get_cable_length_m88;
 phy->ops.get_cfg_done = e1000_get_cfg_done_generic;
 phy->ops.read_reg = (hw->mac.type == 129)
      ? e1000_read_phy_reg_82543
      : e1000_read_phy_reg_m88;
 phy->ops.reset = (hw->mac.type == 129)
      ? e1000_phy_hw_reset_82543
      : e1000_phy_hw_reset_generic;
 phy->ops.write_reg = (hw->mac.type == 129)
      ? e1000_write_phy_reg_82543
      : e1000_write_phy_reg_m88;
 phy->ops.get_info = e1000_get_phy_info_m88;






 if (!e1000_init_phy_disabled_82543(hw)) {
  ret_val = phy->ops.reset(hw);
  if (ret_val) {
   DEBUGOUT("Resetting PHY during init failed.\n");
   goto out;
  }
  msec_delay(20);
 }

 ret_val = e1000_get_phy_id(hw);
 if (ret_val)
  goto out;


 switch (hw->mac.type) {
 case 129:
  if (phy->id != M88E1000_E_PHY_ID) {
   ret_val = -E1000_ERR_PHY;
   goto out;
  }
  break;
 case 128:
  if (phy->id != M88E1000_I_PHY_ID) {
   ret_val = -E1000_ERR_PHY;
   goto out;
  }
  break;
 default:
  ret_val = -E1000_ERR_PHY;
  goto out;
  break;
 }

out:
 return ret_val;
}
