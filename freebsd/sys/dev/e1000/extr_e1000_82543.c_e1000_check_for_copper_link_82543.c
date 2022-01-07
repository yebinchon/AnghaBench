
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int (* get_link_up_info ) (struct e1000_hw*,scalar_t__*,scalar_t__*) ;int (* config_collision_dist ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {int forced_speed_duplex; scalar_t__ type; TYPE_1__ ops; int autoneg; scalar_t__ get_link_status; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_ALL_10_SPEED ;
 int E1000_ERR_CONFIG ;
 int E1000_ICR ;
 int E1000_ICS ;
 int E1000_ICS_LSC ;
 int E1000_IMC ;
 int E1000_IMS ;
 int E1000_RCTL ;
 int E1000_RCTL_SBP ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ FALSE ;
 int IMS_ENABLE_MASK ;
 scalar_t__ SPEED_1000 ;
 scalar_t__ TRUE ;
 scalar_t__ e1000_82544 ;
 int e1000_check_downshift_generic (struct e1000_hw*) ;
 int e1000_config_fc_after_link_up_generic (struct e1000_hw*) ;
 int e1000_config_mac_to_phy_82543 (struct e1000_hw*) ;
 int e1000_phy_has_link_generic (struct e1000_hw*,int,int ,int*) ;
 int e1000_polarity_reversal_workaround_82543 (struct e1000_hw*) ;
 int e1000_set_tbi_sbp_82543 (struct e1000_hw*,scalar_t__) ;
 scalar_t__ e1000_tbi_compatibility_enabled_82543 (struct e1000_hw*) ;
 scalar_t__ e1000_tbi_sbp_enabled_82543 (struct e1000_hw*) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static s32 e1000_check_for_copper_link_82543(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 u32 icr, rctl;
 s32 ret_val;
 u16 speed, duplex;
 bool link;

 DEBUGFUNC("e1000_check_for_copper_link_82543");

 if (!mac->get_link_status) {
  ret_val = E1000_SUCCESS;
  goto out;
 }

 ret_val = e1000_phy_has_link_generic(hw, 1, 0, &link);
 if (ret_val)
  goto out;

 if (!link)
  goto out;

 mac->get_link_status = FALSE;

 e1000_check_downshift_generic(hw);





 if (!mac->autoneg) {
  if (mac->forced_speed_duplex & E1000_ALL_10_SPEED) {
   E1000_WRITE_REG(hw, E1000_IMC, 0xFFFFFFFF);
   ret_val = e1000_polarity_reversal_workaround_82543(hw);
   icr = E1000_READ_REG(hw, E1000_ICR);
   E1000_WRITE_REG(hw, E1000_ICS, (icr & ~E1000_ICS_LSC));
   E1000_WRITE_REG(hw, E1000_IMS, IMS_ENABLE_MASK);
  }

  ret_val = -E1000_ERR_CONFIG;
  goto out;
 }
 if (mac->type == e1000_82544)
  hw->mac.ops.config_collision_dist(hw);
 else {
  ret_val = e1000_config_mac_to_phy_82543(hw);
  if (ret_val) {
   DEBUGOUT("Error configuring MAC to PHY settings\n");
   goto out;
  }
 }







 ret_val = e1000_config_fc_after_link_up_generic(hw);
 if (ret_val)
  DEBUGOUT("Error configuring flow control\n");
 if (e1000_tbi_compatibility_enabled_82543(hw)) {
  ret_val = mac->ops.get_link_up_info(hw, &speed, &duplex);
  if (ret_val) {
   DEBUGOUT("Error getting link speed and duplex\n");
   return ret_val;
  }
  if (speed != SPEED_1000) {




   if (e1000_tbi_sbp_enabled_82543(hw)) {




    e1000_set_tbi_sbp_82543(hw, FALSE);
    rctl = E1000_READ_REG(hw, E1000_RCTL);
    rctl &= ~E1000_RCTL_SBP;
    E1000_WRITE_REG(hw, E1000_RCTL, rctl);
   }
  } else {







   if (!e1000_tbi_sbp_enabled_82543(hw)) {
    e1000_set_tbi_sbp_82543(hw, TRUE);
    rctl = E1000_READ_REG(hw, E1000_RCTL);
    rctl |= E1000_RCTL_SBP;
    E1000_WRITE_REG(hw, E1000_RCTL, rctl);
   }
  }
 }
out:
 return ret_val;
}
