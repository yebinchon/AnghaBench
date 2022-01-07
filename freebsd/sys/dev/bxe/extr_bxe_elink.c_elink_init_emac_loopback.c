
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_vars {int link_up; int phy_flags; int mac_type; int flow_ctrl; int duplex; int line_speed; } ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;


 int DUPLEX_FULL ;
 int ELINK_FLOW_CTRL_NONE ;
 int ELINK_MAC_TYPE_EMAC ;
 int ELINK_SPEED_1000 ;
 scalar_t__ NIG_REG_EGRESS_DRAIN0_MODE ;
 int PHY_XGXS_FLAG ;
 int REG_WR (struct bxe_softc*,scalar_t__,int ) ;
 int elink_emac_enable (struct elink_params*,struct elink_vars*,int) ;
 int elink_emac_program (struct elink_params*,struct elink_vars*) ;
 int elink_xgxs_deassert (struct elink_params*) ;

__attribute__((used)) static void elink_init_emac_loopback(struct elink_params *params,
         struct elink_vars *vars)
{
 struct bxe_softc *sc = params->sc;
  vars->link_up = 1;
  vars->line_speed = ELINK_SPEED_1000;
  vars->duplex = DUPLEX_FULL;
  vars->flow_ctrl = ELINK_FLOW_CTRL_NONE;
  vars->mac_type = ELINK_MAC_TYPE_EMAC;

  vars->phy_flags = PHY_XGXS_FLAG;

  elink_xgxs_deassert(params);

  elink_emac_enable(params, vars, 1);
  elink_emac_program(params, vars);
  REG_WR(sc, NIG_REG_EGRESS_DRAIN0_MODE + params->port*4, 0);
}
