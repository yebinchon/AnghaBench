
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct bwn_softc {int sc_dev; } ;
struct bwn_phy_lp {int plp_txpctlmode; } ;
struct TYPE_2__ {struct bwn_phy_lp phy_lp; } ;
struct bwn_mac {struct bwn_softc* mac_sc; TYPE_1__ mac_phy; } ;


 int BWN_PHYLP_TXPCTL_OFF ;
 int BWN_PHYLP_TXPCTL_ON_HW ;
 int BWN_PHYLP_TXPCTL_ON_SW ;
 int BWN_PHYLP_TXPCTL_UNKNOWN ;
 int BWN_PHY_READ (struct bwn_mac*,int ) ;
 int BWN_PHY_TX_PWR_CTL_CMD ;
 int BWN_PHY_TX_PWR_CTL_CMD_MODE ;



 int device_printf (int ,char*) ;

__attribute__((used)) static void
bwn_phy_lp_get_txpctlmode(struct bwn_mac *mac)
{
 struct bwn_phy_lp *plp = &mac->mac_phy.phy_lp;
 struct bwn_softc *sc = mac->mac_sc;
 uint16_t ctl;

 ctl = BWN_PHY_READ(mac, BWN_PHY_TX_PWR_CTL_CMD);
 switch (ctl & BWN_PHY_TX_PWR_CTL_CMD_MODE) {
 case 129:
  plp->plp_txpctlmode = BWN_PHYLP_TXPCTL_OFF;
  break;
 case 128:
  plp->plp_txpctlmode = BWN_PHYLP_TXPCTL_ON_SW;
  break;
 case 130:
  plp->plp_txpctlmode = BWN_PHYLP_TXPCTL_ON_HW;
  break;
 default:
  plp->plp_txpctlmode = BWN_PHYLP_TXPCTL_UNKNOWN;
  device_printf(sc->sc_dev, "unknown command mode\n");
  break;
 }
}
