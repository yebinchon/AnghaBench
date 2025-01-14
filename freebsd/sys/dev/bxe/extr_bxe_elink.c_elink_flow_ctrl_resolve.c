
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct elink_vars {scalar_t__ flow_ctrl; int phy_flags; } ;
struct elink_phy {scalar_t__ req_flow_ctrl; scalar_t__ req_line_speed; } ;
struct elink_params {scalar_t__ req_fc_auto_adv; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,scalar_t__) ;
 scalar_t__ ELINK_FLOW_CTRL_AUTO ;
 scalar_t__ ELINK_FLOW_CTRL_NONE ;
 int ELINK_MDIO_AN_CL73_OR_37_COMPLETE ;
 scalar_t__ ELINK_SPEED_AUTO_NEG ;
 int PHY_SGMII_FLAG ;
 scalar_t__ elink_direct_parallel_detect_used (struct elink_phy*,struct elink_params*) ;
 int elink_update_adv_fc (struct elink_phy*,struct elink_params*,struct elink_vars*,int) ;

__attribute__((used)) static void elink_flow_ctrl_resolve(struct elink_phy *phy,
        struct elink_params *params,
        struct elink_vars *vars,
        uint32_t gp_status)
{
 struct bxe_softc *sc = params->sc;
 vars->flow_ctrl = ELINK_FLOW_CTRL_NONE;


 if (phy->req_flow_ctrl != ELINK_FLOW_CTRL_AUTO) {

  if (phy->req_line_speed == ELINK_SPEED_AUTO_NEG)
   elink_update_adv_fc(phy, params, vars, gp_status);

  vars->flow_ctrl = phy->req_flow_ctrl;
 } else if (phy->req_line_speed != ELINK_SPEED_AUTO_NEG)
  vars->flow_ctrl = params->req_fc_auto_adv;
 else if ((gp_status & ELINK_MDIO_AN_CL73_OR_37_COMPLETE) &&
   (!(vars->phy_flags & PHY_SGMII_FLAG))) {
  if (elink_direct_parallel_detect_used(phy, params)) {
   vars->flow_ctrl = params->req_fc_auto_adv;
   return;
  }
  elink_update_adv_fc(phy, params, vars, gp_status);
 }
 ELINK_DEBUG_P1(sc, "flow_ctrl 0x%x\n", vars->flow_ctrl);
}
