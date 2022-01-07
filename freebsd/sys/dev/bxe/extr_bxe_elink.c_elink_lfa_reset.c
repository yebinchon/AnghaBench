
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elink_vars {scalar_t__ phy_flags; scalar_t__ link_up; } ;
struct elink_params {int port; int chip_id; int lfa_base; int link_flags; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef int elink_status_t ;


 scalar_t__ CHIP_IS_E3 (struct bxe_softc*) ;
 int DELAY (int) ;
 int ELINK_PHY_INITIALIZED ;
 int ELINK_STATUS_OK ;
 scalar_t__ NIG_REG_EGRESS_DRAIN0_MODE ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;
 int elink_link_reset (struct elink_params*,struct elink_vars*,int) ;
 int elink_set_bmac_rx (struct bxe_softc*,int ,int,int) ;
 int elink_set_rx_filter (struct elink_params*,int ) ;
 int elink_set_umac_rxtx (struct elink_params*,int) ;
 int elink_set_xmac_rxtx (struct elink_params*,int) ;

elink_status_t elink_lfa_reset(struct elink_params *params,
          struct elink_vars *vars)
{
 struct bxe_softc *sc = params->sc;
 vars->link_up = 0;
 vars->phy_flags = 0;
 params->link_flags &= ~ELINK_PHY_INITIALIZED;
 if (!params->lfa_base)
  return elink_link_reset(params, vars, 1);




 REG_WR(sc, NIG_REG_EGRESS_DRAIN0_MODE + params->port*4, 1);





 if (!CHIP_IS_E3(sc))
  elink_set_bmac_rx(sc, params->chip_id, params->port, 0);

 if (CHIP_IS_E3(sc)) {
  elink_set_xmac_rxtx(params, 0);
  elink_set_umac_rxtx(params, 0);
 }

 DELAY(1000 * 10);




 elink_set_rx_filter(params, 0);







 if (!CHIP_IS_E3(sc))
  elink_set_bmac_rx(sc, params->chip_id, params->port, 1);

 if (CHIP_IS_E3(sc)) {
  elink_set_xmac_rxtx(params, 1);
  elink_set_umac_rxtx(params, 1);
 }

 REG_WR(sc, NIG_REG_EGRESS_DRAIN0_MODE + params->port*4, 0);
 return ELINK_STATUS_OK;
}
