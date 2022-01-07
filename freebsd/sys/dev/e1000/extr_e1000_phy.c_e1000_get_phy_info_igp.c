
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int*) ;scalar_t__ (* get_cable_length ) (struct e1000_hw*) ;} ;
struct e1000_phy_info {int is_mdix; void* remote_rx; void* local_rx; int cable_length; TYPE_1__ ops; int polarity_correction; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_CABLE_LENGTH_UNDEFINED ;
 scalar_t__ E1000_ERR_CONFIG ;
 int IGP01E1000_PHY_PORT_STATUS ;
 int IGP01E1000_PSSR_MDIX ;
 int IGP01E1000_PSSR_SPEED_1000MBPS ;
 int IGP01E1000_PSSR_SPEED_MASK ;
 int PHY_1000T_STATUS ;
 int SR_1000T_LOCAL_RX_STATUS ;
 int SR_1000T_REMOTE_RX_STATUS ;
 int TRUE ;
 void* e1000_1000t_rx_status_not_ok ;
 void* e1000_1000t_rx_status_ok ;
 void* e1000_1000t_rx_status_undefined ;
 scalar_t__ e1000_check_polarity_igp (struct e1000_hw*) ;
 scalar_t__ e1000_phy_has_link_generic (struct e1000_hw*,int,int ,int*) ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub2 (struct e1000_hw*) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,int*) ;

s32 e1000_get_phy_info_igp(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 data;
 bool link;

 DEBUGFUNC("e1000_get_phy_info_igp");

 ret_val = e1000_phy_has_link_generic(hw, 1, 0, &link);
 if (ret_val)
  return ret_val;

 if (!link) {
  DEBUGOUT("Phy info is only valid if link is up\n");
  return -E1000_ERR_CONFIG;
 }

 phy->polarity_correction = TRUE;

 ret_val = e1000_check_polarity_igp(hw);
 if (ret_val)
  return ret_val;

 ret_val = phy->ops.read_reg(hw, IGP01E1000_PHY_PORT_STATUS, &data);
 if (ret_val)
  return ret_val;

 phy->is_mdix = !!(data & IGP01E1000_PSSR_MDIX);

 if ((data & IGP01E1000_PSSR_SPEED_MASK) ==
     IGP01E1000_PSSR_SPEED_1000MBPS) {
  ret_val = phy->ops.get_cable_length(hw);
  if (ret_val)
   return ret_val;

  ret_val = phy->ops.read_reg(hw, PHY_1000T_STATUS, &data);
  if (ret_val)
   return ret_val;

  phy->local_rx = (data & SR_1000T_LOCAL_RX_STATUS)
    ? e1000_1000t_rx_status_ok
    : e1000_1000t_rx_status_not_ok;

  phy->remote_rx = (data & SR_1000T_REMOTE_RX_STATUS)
     ? e1000_1000t_rx_status_ok
     : e1000_1000t_rx_status_not_ok;
 } else {
  phy->cable_length = E1000_CABLE_LENGTH_UNDEFINED;
  phy->local_rx = e1000_1000t_rx_status_undefined;
  phy->remote_rx = e1000_1000t_rx_status_undefined;
 }

 return ret_val;
}
