
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_vars {int ieee_fc; int phy_flags; } ;
struct elink_phy {scalar_t__ req_line_speed; scalar_t__ speed_cap_mask; scalar_t__ type; } ;
struct elink_params {int dummy; } ;
typedef scalar_t__ elink_status_t ;


 scalar_t__ ELINK_SPEED_10 ;
 scalar_t__ ELINK_SPEED_100 ;
 scalar_t__ ELINK_STATUS_OK ;
 int PHY_SGMII_FLAG ;
 int PHY_XGXS_FLAG ;
 scalar_t__ PORT_HW_CFG_SERDES_EXT_PHY_TYPE_DIRECT_SD ;
 scalar_t__ PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL ;
 scalar_t__ PORT_HW_CFG_SPEED_CAPABILITY_D0_1G ;
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT ;
 int elink_calc_ieee_aneg_adv (struct elink_phy*,struct elink_params*,int *) ;
 scalar_t__ elink_reset_unicore (struct elink_params*,struct elink_phy*,int ) ;
 int elink_set_aer_mmd (struct elink_params*,struct elink_phy*) ;
 int elink_set_master_ln (struct elink_params*,struct elink_phy*) ;
 int elink_set_swap_lanes (struct elink_params*,struct elink_phy*) ;

__attribute__((used)) static elink_status_t elink_prepare_xgxs(struct elink_phy *phy,
     struct elink_params *params,
     struct elink_vars *vars)
{
 elink_status_t rc;
 vars->phy_flags |= PHY_XGXS_FLAG;
 if ((phy->req_line_speed &&
      ((phy->req_line_speed == ELINK_SPEED_100) ||
       (phy->req_line_speed == ELINK_SPEED_10))) ||
     (!phy->req_line_speed &&
      (phy->speed_cap_mask >=
       PORT_HW_CFG_SPEED_CAPABILITY_D0_10M_FULL) &&
      (phy->speed_cap_mask <
       PORT_HW_CFG_SPEED_CAPABILITY_D0_1G)) ||
     (phy->type == PORT_HW_CFG_SERDES_EXT_PHY_TYPE_DIRECT_SD))
  vars->phy_flags |= PHY_SGMII_FLAG;
 else
  vars->phy_flags &= ~PHY_SGMII_FLAG;

 elink_calc_ieee_aneg_adv(phy, params, &vars->ieee_fc);
 elink_set_aer_mmd(params, phy);
 if (phy->type == PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT)
  elink_set_master_ln(params, phy);

 rc = elink_reset_unicore(params, phy, 0);

 if (rc != ELINK_STATUS_OK)
  return rc;

 elink_set_aer_mmd(params, phy);

 if (phy->type == PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT) {
  elink_set_master_ln(params, phy);
  elink_set_swap_lanes(params, phy);
 }

 return rc;
}
