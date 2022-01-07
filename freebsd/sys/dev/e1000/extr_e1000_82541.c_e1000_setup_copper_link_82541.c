
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct e1000_phy_info {int mdix; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ autoneg; } ;
struct e1000_dev_spec_82541 {scalar_t__ ffe_config; int dsp_config; } ;
struct TYPE_3__ {struct e1000_dev_spec_82541 _82541; } ;
struct e1000_hw {TYPE_2__ mac; TYPE_1__ dev_spec; struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_FRCDPX ;
 int E1000_CTRL_FRCSPD ;
 int E1000_CTRL_SLU ;
 int E1000_LEDCTL ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int IGP_ACTIVITY_LED_ENABLE ;
 int IGP_ACTIVITY_LED_MASK ;
 int IGP_LED3_MODE ;
 scalar_t__ e1000_82541 ;
 scalar_t__ e1000_82547 ;
 scalar_t__ e1000_copper_link_setup_igp (struct e1000_hw*) ;
 int e1000_dsp_config_disabled ;
 int e1000_dsp_config_enabled ;
 scalar_t__ e1000_ffe_config_active ;
 scalar_t__ e1000_ffe_config_enabled ;
 scalar_t__ e1000_setup_copper_link_generic (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_setup_copper_link_82541(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 struct e1000_dev_spec_82541 *dev_spec = &hw->dev_spec._82541;
 s32 ret_val;
 u32 ctrl, ledctl;

 DEBUGFUNC("e1000_setup_copper_link_82541");

 ctrl = E1000_READ_REG(hw, E1000_CTRL);
 ctrl |= E1000_CTRL_SLU;
 ctrl &= ~(E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
 E1000_WRITE_REG(hw, E1000_CTRL, ctrl);



 if (hw->mac.type == e1000_82541 || hw->mac.type == e1000_82547) {
  dev_spec->dsp_config = e1000_dsp_config_disabled;
  phy->mdix = 1;
 } else {
  dev_spec->dsp_config = e1000_dsp_config_enabled;
 }

 ret_val = e1000_copper_link_setup_igp(hw);
 if (ret_val)
  goto out;

 if (hw->mac.autoneg) {
  if (dev_spec->ffe_config == e1000_ffe_config_active)
   dev_spec->ffe_config = e1000_ffe_config_enabled;
 }


 ledctl = E1000_READ_REG(hw, E1000_LEDCTL);
 ledctl &= IGP_ACTIVITY_LED_MASK;
 ledctl |= (IGP_ACTIVITY_LED_ENABLE | IGP_LED3_MODE);
 E1000_WRITE_REG(hw, E1000_LEDCTL, ledctl);

 ret_val = e1000_setup_copper_link_generic(hw);

out:
 return ret_val;
}
