
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* config_collision_dist ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {TYPE_1__ ops; int autoneg; scalar_t__ get_link_status; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_ERR_CONFIG ;
 int E1000_SUCCESS ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int e1000_check_downshift_generic (struct e1000_hw*) ;
 int e1000_config_dsp_after_link_change_82541 (struct e1000_hw*,scalar_t__) ;
 int e1000_config_fc_after_link_up_generic (struct e1000_hw*) ;
 int e1000_phy_has_link_generic (struct e1000_hw*,int,int ,int*) ;
 int stub1 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_check_for_link_82541(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 s32 ret_val;
 bool link;

 DEBUGFUNC("e1000_check_for_link_82541");







 if (!mac->get_link_status) {
  ret_val = E1000_SUCCESS;
  goto out;
 }






 ret_val = e1000_phy_has_link_generic(hw, 1, 0, &link);
 if (ret_val)
  goto out;

 if (!link) {
  ret_val = e1000_config_dsp_after_link_change_82541(hw, FALSE);
  goto out;
 }

 mac->get_link_status = FALSE;





 e1000_check_downshift_generic(hw);





 if (!mac->autoneg) {
  ret_val = -E1000_ERR_CONFIG;
  goto out;
 }

 ret_val = e1000_config_dsp_after_link_change_82541(hw, TRUE);






 mac->ops.config_collision_dist(hw);







 ret_val = e1000_config_fc_after_link_up_generic(hw);
 if (ret_val)
  DEBUGOUT("Error configuring flow control\n");

out:
 return ret_val;
}
