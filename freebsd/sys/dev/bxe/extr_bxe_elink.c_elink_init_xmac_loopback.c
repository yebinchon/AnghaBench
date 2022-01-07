
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct elink_vars {int link_up; int phy_flags; int mac_type; int flow_ctrl; int duplex; scalar_t__ line_speed; } ;
struct elink_params {int port; TYPE_1__* phy; scalar_t__* req_line_speed; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
struct TYPE_4__ {int (* config_loopback ) (TYPE_1__*,struct elink_params*) ;} ;


 int DUPLEX_FULL ;
 int ELINK_FLOW_CTRL_NONE ;
 size_t ELINK_INT_PHY ;
 int ELINK_MAC_TYPE_XMAC ;
 scalar_t__ ELINK_SPEED_10000 ;
 scalar_t__ NIG_REG_EGRESS_DRAIN0_MODE ;
 int PHY_XGXS_FLAG ;
 int REG_WR (struct bxe_softc*,scalar_t__,int ) ;
 int elink_set_aer_mmd (struct elink_params*,TYPE_1__*) ;
 int elink_warpcore_reset_lane (struct bxe_softc*,TYPE_1__*,int ) ;
 int elink_xmac_enable (struct elink_params*,struct elink_vars*,int) ;
 int stub1 (TYPE_1__*,struct elink_params*) ;

__attribute__((used)) static void elink_init_xmac_loopback(struct elink_params *params,
         struct elink_vars *vars)
{
 struct bxe_softc *sc = params->sc;
 vars->link_up = 1;
 if (!params->req_line_speed[0])
  vars->line_speed = ELINK_SPEED_10000;
 else
  vars->line_speed = params->req_line_speed[0];
 vars->duplex = DUPLEX_FULL;
 vars->flow_ctrl = ELINK_FLOW_CTRL_NONE;
 vars->mac_type = ELINK_MAC_TYPE_XMAC;
 vars->phy_flags = PHY_XGXS_FLAG;



 elink_set_aer_mmd(params, &params->phy[0]);
 elink_warpcore_reset_lane(sc, &params->phy[0], 0);
 params->phy[ELINK_INT_PHY].config_loopback(
   &params->phy[ELINK_INT_PHY],
   params);

 elink_xmac_enable(params, vars, 1);
 REG_WR(sc, NIG_REG_EGRESS_DRAIN0_MODE + params->port*4, 0);
}
