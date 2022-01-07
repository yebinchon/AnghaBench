
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_6__ {void* force_speed_duplex; void* set_d3_lplu_state; void* set_d0_lplu_state; void* get_cable_length; void* get_info; void* check_polarity; int (* read_reg ) (struct e1000_hw*,int ,int*) ;int (* write_reg ) (struct e1000_hw*,int ,int) ;int reset; int release; int get_cfg_done; int commit; int check_reset_block; int acquire; int power_down; int power_up; int write_i2c_byte; int read_i2c_byte; } ;
struct e1000_phy_info {scalar_t__ media_type; int reset_delay_us; int id; TYPE_3__ ops; int type; int autoneg_mask; } ;
struct TYPE_4__ {int check_for_link; } ;
struct TYPE_5__ {int type; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; struct e1000_phy_info phy; } ;
typedef int s32 ;


 int AUTONEG_ADVERTISE_SPEED_DEFAULT ;
 int DEBUGFUNC (char*) ;
 int E1000_CTRL_EXT ;
 int E1000_CTRL_I2C_ENA ;
 int E1000_ERR_PHY ;
 int E1000_M88E1112_AUTO_COPPER_BASEX ;
 int E1000_M88E1112_AUTO_COPPER_SGMII ;
 int E1000_M88E1112_MAC_CTRL_1 ;
 int E1000_M88E1112_MAC_CTRL_1_MODE_MASK ;
 int E1000_M88E1112_MAC_CTRL_1_MODE_SHIFT ;
 int E1000_M88E1112_PAGE_ADDR ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 int e1000_acquire_phy_82575 ;
 int e1000_check_for_link_media_swap ;
 void* e1000_check_polarity_82577 ;
 void* e1000_check_polarity_igp ;
 void* e1000_check_polarity_m88 ;
 int e1000_check_reset_block_generic ;
 void* e1000_get_cable_length_82577 ;
 void* e1000_get_cable_length_igp_2 ;
 void* e1000_get_cable_length_m88 ;
 void* e1000_get_cable_length_m88_gen2 ;
 int e1000_get_cfg_done_82575 ;
 int e1000_get_phy_id_82575 (struct e1000_hw*) ;
 void* e1000_get_phy_info_82577 ;
 void* e1000_get_phy_info_igp ;
 void* e1000_get_phy_info_m88 ;




 int e1000_initialize_M88E1512_phy (struct e1000_hw*) ;
 int e1000_initialize_M88E1543_phy (struct e1000_hw*) ;
 scalar_t__ e1000_media_type_copper ;
 int e1000_phy_82580 ;
 void* e1000_phy_force_speed_duplex_82577 ;
 void* e1000_phy_force_speed_duplex_igp ;
 void* e1000_phy_force_speed_duplex_m88 ;
 int e1000_phy_hw_reset_generic ;
 int e1000_phy_hw_reset_sgmii_82575 ;
 int e1000_phy_i210 ;
 int e1000_phy_igp_3 ;
 int e1000_phy_m88 ;
 int e1000_phy_none ;
 int e1000_phy_sw_reset_generic ;
 int e1000_power_down_phy_copper_82575 ;
 int e1000_power_up_phy_copper ;
 int e1000_read_i2c_byte_generic ;
 int e1000_read_phy_reg_82580 (struct e1000_hw*,int ,int*) ;
 int e1000_read_phy_reg_gs40g (struct e1000_hw*,int ,int*) ;
 int e1000_read_phy_reg_igp (struct e1000_hw*,int ,int*) ;
 int e1000_read_phy_reg_sgmii_82575 (struct e1000_hw*,int ,int*) ;
 int e1000_release_phy_82575 ;
 int e1000_reset_mdicnfg_82580 (struct e1000_hw*) ;
 void* e1000_set_d0_lplu_state_82575 ;
 void* e1000_set_d0_lplu_state_82580 ;
 void* e1000_set_d3_lplu_state_82580 ;
 void* e1000_set_d3_lplu_state_generic ;
 scalar_t__ e1000_sgmii_active_82575 (struct e1000_hw*) ;
 int e1000_sgmii_uses_mdio_82575 (struct e1000_hw*) ;
 int e1000_write_i2c_byte_generic ;
 int e1000_write_phy_reg_82580 (struct e1000_hw*,int ,int) ;
 int e1000_write_phy_reg_gs40g (struct e1000_hw*,int ,int) ;
 int e1000_write_phy_reg_igp (struct e1000_hw*,int ,int) ;
 int e1000_write_phy_reg_sgmii_82575 (struct e1000_hw*,int ,int) ;
 int stub1 (struct e1000_hw*,int ,int) ;
 int stub2 (struct e1000_hw*,int ,int*) ;

__attribute__((used)) static s32 e1000_init_phy_params_82575(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val = E1000_SUCCESS;
 u32 ctrl_ext;

 DEBUGFUNC("e1000_init_phy_params_82575");

 phy->ops.read_i2c_byte = e1000_read_i2c_byte_generic;
 phy->ops.write_i2c_byte = e1000_write_i2c_byte_generic;

 if (hw->phy.media_type != e1000_media_type_copper) {
  phy->type = e1000_phy_none;
  goto out;
 }

 phy->ops.power_up = e1000_power_up_phy_copper;
 phy->ops.power_down = e1000_power_down_phy_copper_82575;

 phy->autoneg_mask = AUTONEG_ADVERTISE_SPEED_DEFAULT;
 phy->reset_delay_us = 100;

 phy->ops.acquire = e1000_acquire_phy_82575;
 phy->ops.check_reset_block = e1000_check_reset_block_generic;
 phy->ops.commit = e1000_phy_sw_reset_generic;
 phy->ops.get_cfg_done = e1000_get_cfg_done_82575;
 phy->ops.release = e1000_release_phy_82575;

 ctrl_ext = E1000_READ_REG(hw, E1000_CTRL_EXT);

 if (e1000_sgmii_active_82575(hw)) {
  phy->ops.reset = e1000_phy_hw_reset_sgmii_82575;
  ctrl_ext |= E1000_CTRL_I2C_ENA;
 } else {
  phy->ops.reset = e1000_phy_hw_reset_generic;
  ctrl_ext &= ~E1000_CTRL_I2C_ENA;
 }

 E1000_WRITE_REG(hw, E1000_CTRL_EXT, ctrl_ext);
 e1000_reset_mdicnfg_82580(hw);

 if (e1000_sgmii_active_82575(hw) && !e1000_sgmii_uses_mdio_82575(hw)) {
  phy->ops.read_reg = e1000_read_phy_reg_sgmii_82575;
  phy->ops.write_reg = e1000_write_phy_reg_sgmii_82575;
 } else {
  switch (hw->mac.type) {
  case 132:
  case 129:
  case 128:
   phy->ops.read_reg = e1000_read_phy_reg_82580;
   phy->ops.write_reg = e1000_write_phy_reg_82580;
   break;
  case 131:
  case 130:
   phy->ops.read_reg = e1000_read_phy_reg_gs40g;
   phy->ops.write_reg = e1000_write_phy_reg_gs40g;
   break;
  default:
   phy->ops.read_reg = e1000_read_phy_reg_igp;
   phy->ops.write_reg = e1000_write_phy_reg_igp;
  }
 }


 ret_val = e1000_get_phy_id_82575(hw);


 switch (phy->id) {
 case 133:
 case 134:
 case 142:
 case 136:
 case 135:
 case 137:
  phy->type = e1000_phy_m88;
  phy->ops.check_polarity = e1000_check_polarity_m88;
  phy->ops.get_info = e1000_get_phy_info_m88;
  if (phy->id == 142 ||
      phy->id == 136 ||
      phy->id == 135)
   phy->ops.get_cable_length =
      e1000_get_cable_length_m88_gen2;
  else if (phy->id == 133 ||
    phy->id == 134)
   phy->ops.get_cable_length =
      e1000_get_cable_length_m88_gen2;
  else
   phy->ops.get_cable_length = e1000_get_cable_length_m88;
  phy->ops.force_speed_duplex = e1000_phy_force_speed_duplex_m88;

  if (phy->id == 136) {
   u16 data;

   ret_val = phy->ops.write_reg(hw,
           E1000_M88E1112_PAGE_ADDR,
           2);
   if (ret_val)
    goto out;

   ret_val = phy->ops.read_reg(hw,
          E1000_M88E1112_MAC_CTRL_1,
          &data);
   if (ret_val)
    goto out;

   data = (data & E1000_M88E1112_MAC_CTRL_1_MODE_MASK) >>
          E1000_M88E1112_MAC_CTRL_1_MODE_SHIFT;
   if (data == E1000_M88E1112_AUTO_COPPER_SGMII ||
       data == E1000_M88E1112_AUTO_COPPER_BASEX)
    hw->mac.ops.check_for_link =
      e1000_check_for_link_media_swap;
  }
  if (phy->id == 134) {
   ret_val = e1000_initialize_M88E1512_phy(hw);
   if (ret_val)
    goto out;
  }
  if (phy->id == 133) {
   ret_val = e1000_initialize_M88E1543_phy(hw);
   if (ret_val)
    goto out;
  }
  break;
 case 139:
 case 138:
  phy->type = e1000_phy_igp_3;
  phy->ops.check_polarity = e1000_check_polarity_igp;
  phy->ops.get_info = e1000_get_phy_info_igp;
  phy->ops.get_cable_length = e1000_get_cable_length_igp_2;
  phy->ops.force_speed_duplex = e1000_phy_force_speed_duplex_igp;
  phy->ops.set_d0_lplu_state = e1000_set_d0_lplu_state_82575;
  phy->ops.set_d3_lplu_state = e1000_set_d3_lplu_state_generic;
  break;
 case 140:
 case 141:
  phy->type = e1000_phy_82580;
  phy->ops.check_polarity = e1000_check_polarity_82577;
  phy->ops.force_speed_duplex =
      e1000_phy_force_speed_duplex_82577;
  phy->ops.get_cable_length = e1000_get_cable_length_82577;
  phy->ops.get_info = e1000_get_phy_info_82577;
  phy->ops.set_d0_lplu_state = e1000_set_d0_lplu_state_82580;
  phy->ops.set_d3_lplu_state = e1000_set_d3_lplu_state_82580;
  break;
 case 143:
  phy->type = e1000_phy_i210;
  phy->ops.check_polarity = e1000_check_polarity_m88;
  phy->ops.get_info = e1000_get_phy_info_m88;
  phy->ops.get_cable_length = e1000_get_cable_length_m88_gen2;
  phy->ops.set_d0_lplu_state = e1000_set_d0_lplu_state_82580;
  phy->ops.set_d3_lplu_state = e1000_set_d3_lplu_state_82580;
  phy->ops.force_speed_duplex = e1000_phy_force_speed_duplex_m88;
  break;
 default:
  ret_val = -E1000_ERR_PHY;
  goto out;
 }

out:
 return ret_val;
}
