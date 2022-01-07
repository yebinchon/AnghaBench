
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct elink_vars {int link_up; scalar_t__ line_speed; int duplex; int flow_ctrl; } ;
struct elink_phy {int flags; int (* config_loopback ) (struct elink_phy*,struct elink_params*) ;} ;
struct elink_params {scalar_t__* req_line_speed; scalar_t__ loopback_mode; size_t num_phys; int port; struct elink_phy* phy; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int DUPLEX_FULL ;
 size_t ELINK_EXT_PHY1 ;
 int ELINK_FLAGS_WC_DUAL_MODE ;
 int ELINK_FLOW_CTRL_NONE ;
 size_t ELINK_INT_PHY ;
 int ELINK_LED_MODE_OPER ;
 scalar_t__ ELINK_LOOPBACK_XGXS ;
 scalar_t__ ELINK_SPEED_1000 ;
 scalar_t__ ELINK_SPEED_10000 ;
 scalar_t__ ELINK_SPEED_20000 ;
 scalar_t__ NIG_REG_EGRESS_DRAIN0_MODE ;
 int REG_WR (struct bxe_softc*,scalar_t__,int ) ;
 scalar_t__ USES_WARPCORE (struct bxe_softc*) ;
 int elink_bmac_enable (struct elink_params*,struct elink_vars*,int ,int) ;
 int elink_emac_enable (struct elink_params*,struct elink_vars*,int ) ;
 int elink_emac_program (struct elink_params*,struct elink_vars*) ;
 int elink_link_initialize (struct elink_params*,struct elink_vars*) ;
 int elink_set_led (struct elink_params*,struct elink_vars*,int ,scalar_t__) ;
 int elink_umac_enable (struct elink_params*,struct elink_vars*,int ) ;
 int elink_xgxs_deassert (struct elink_params*) ;
 int elink_xmac_enable (struct elink_params*,struct elink_vars*,int ) ;
 int stub1 (struct elink_phy*,struct elink_params*) ;
 int stub2 (struct elink_phy*,struct elink_params*) ;

__attribute__((used)) static void elink_init_xgxs_loopback(struct elink_params *params,
         struct elink_vars *vars)
{
 struct bxe_softc *sc = params->sc;
 struct elink_phy *int_phy = &params->phy[ELINK_INT_PHY];
 vars->link_up = 1;
 vars->flow_ctrl = ELINK_FLOW_CTRL_NONE;
 vars->duplex = DUPLEX_FULL;
 if (params->req_line_speed[0] == ELINK_SPEED_1000)
  vars->line_speed = ELINK_SPEED_1000;
 else if ((params->req_line_speed[0] == ELINK_SPEED_20000) ||
   (int_phy->flags & ELINK_FLAGS_WC_DUAL_MODE))
  vars->line_speed = ELINK_SPEED_20000;
 else
  vars->line_speed = ELINK_SPEED_10000;

 if (!USES_WARPCORE(sc))
  elink_xgxs_deassert(params);
 elink_link_initialize(params, vars);

 if (params->req_line_speed[0] == ELINK_SPEED_1000) {
  if (USES_WARPCORE(sc))
   elink_umac_enable(params, vars, 0);
  else {
   elink_emac_program(params, vars);
   elink_emac_enable(params, vars, 0);
  }
 } else {
  if (USES_WARPCORE(sc))
   elink_xmac_enable(params, vars, 0);
  else
   elink_bmac_enable(params, vars, 0, 1);
 }

 if (params->loopback_mode == ELINK_LOOPBACK_XGXS) {

  int_phy->config_loopback(int_phy, params);
 } else {

  uint8_t phy_index;
  for (phy_index = ELINK_EXT_PHY1;
        phy_index < params->num_phys; phy_index++)
   if (params->phy[phy_index].config_loopback)
    params->phy[phy_index].config_loopback(
     &params->phy[phy_index],
     params);
 }
 REG_WR(sc, NIG_REG_EGRESS_DRAIN0_MODE + params->port*4, 0);

 elink_set_led(params, vars, ELINK_LED_MODE_OPER, vars->line_speed);
}
