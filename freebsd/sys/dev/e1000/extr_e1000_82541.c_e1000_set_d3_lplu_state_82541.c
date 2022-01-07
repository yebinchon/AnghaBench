
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int ) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int *) ;} ;
struct e1000_phy_info {scalar_t__ smart_speed; scalar_t__ autoneg_advertised; TYPE_2__ ops; } ;
struct TYPE_3__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ E1000_ALL_10_SPEED ;
 scalar_t__ E1000_ALL_NOT_GIG ;
 scalar_t__ E1000_ALL_SPEED_DUPLEX ;
 int IGP01E1000_GMII_FIFO ;
 int IGP01E1000_GMII_FLEX_SPD ;
 int IGP01E1000_PHY_PORT_CONFIG ;
 int IGP01E1000_PSCFR_SMART_SPEED ;


 scalar_t__ e1000_set_d3_lplu_state_generic (struct e1000_hw*,int) ;
 scalar_t__ e1000_smart_speed_off ;
 scalar_t__ e1000_smart_speed_on ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int ) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub4 (struct e1000_hw*,int ,int ) ;
 scalar_t__ stub5 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub6 (struct e1000_hw*,int ,int ) ;
 scalar_t__ stub7 (struct e1000_hw*,int ,int ) ;
 scalar_t__ stub8 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub9 (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static s32 e1000_set_d3_lplu_state_82541(struct e1000_hw *hw, bool active)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 data;

 DEBUGFUNC("e1000_set_d3_lplu_state_82541");

 switch (hw->mac.type) {
 case 129:
 case 128:
  break;
 default:
  ret_val = e1000_set_d3_lplu_state_generic(hw, active);
  goto out;
  break;
 }

 ret_val = phy->ops.read_reg(hw, IGP01E1000_GMII_FIFO, &data);
 if (ret_val)
  goto out;

 if (!active) {
  data &= ~IGP01E1000_GMII_FLEX_SPD;
  ret_val = phy->ops.write_reg(hw, IGP01E1000_GMII_FIFO, data);
  if (ret_val)
   goto out;







  if (phy->smart_speed == e1000_smart_speed_on) {
   ret_val = phy->ops.read_reg(hw,
          IGP01E1000_PHY_PORT_CONFIG,
          &data);
   if (ret_val)
    goto out;

   data |= IGP01E1000_PSCFR_SMART_SPEED;
   ret_val = phy->ops.write_reg(hw,
           IGP01E1000_PHY_PORT_CONFIG,
           data);
   if (ret_val)
    goto out;
  } else if (phy->smart_speed == e1000_smart_speed_off) {
   ret_val = phy->ops.read_reg(hw,
          IGP01E1000_PHY_PORT_CONFIG,
          &data);
   if (ret_val)
    goto out;

   data &= ~IGP01E1000_PSCFR_SMART_SPEED;
   ret_val = phy->ops.write_reg(hw,
           IGP01E1000_PHY_PORT_CONFIG,
           data);
   if (ret_val)
    goto out;
  }
 } else if ((phy->autoneg_advertised == E1000_ALL_SPEED_DUPLEX) ||
     (phy->autoneg_advertised == E1000_ALL_NOT_GIG) ||
     (phy->autoneg_advertised == E1000_ALL_10_SPEED)) {
  data |= IGP01E1000_GMII_FLEX_SPD;
  ret_val = phy->ops.write_reg(hw, IGP01E1000_GMII_FIFO, data);
  if (ret_val)
   goto out;


  ret_val = phy->ops.read_reg(hw, IGP01E1000_PHY_PORT_CONFIG,
         &data);
  if (ret_val)
   goto out;

  data &= ~IGP01E1000_PSCFR_SMART_SPEED;
  ret_val = phy->ops.write_reg(hw, IGP01E1000_PHY_PORT_CONFIG,
          data);
 }

out:
 return ret_val;
}
