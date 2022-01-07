
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct axe_softc {scalar_t__ sc_phyno; struct usb_ether sc_ue; } ;


 scalar_t__ AXE_772_PHY_NO_EPHY ;
 int AXE_CMD_SW_PHY_SELECT ;
 int AXE_CMD_SW_RESET_REG ;
 int AXE_SW_PHY_SELECT_EMBEDDED ;
 int AXE_SW_PHY_SELECT_EXT ;
 int AXE_SW_PHY_SELECT_SS_ENB ;
 int AXE_SW_PHY_SELECT_SS_MII ;
 int AXE_SW_RESET_CLEAR ;
 int AXE_SW_RESET_IPPD ;
 int AXE_SW_RESET_IPRL ;
 int axe_cmd (struct axe_softc*,int ,int ,int,int *) ;
 int hz ;
 int uether_pause (struct usb_ether*,int) ;

__attribute__((used)) static void
axe_ax88772_phywake(struct axe_softc *sc)
{
 struct usb_ether *ue;

 ue = &sc->sc_ue;
 if (sc->sc_phyno == AXE_772_PHY_NO_EPHY) {

  axe_cmd(sc, AXE_CMD_SW_PHY_SELECT, 0, AXE_SW_PHY_SELECT_SS_ENB |
      AXE_SW_PHY_SELECT_EMBEDDED | AXE_SW_PHY_SELECT_SS_MII,
      ((void*)0));
  uether_pause(&sc->sc_ue, hz / 32);
 } else {




  axe_cmd(sc, AXE_CMD_SW_PHY_SELECT, 0, AXE_SW_PHY_SELECT_SS_ENB |
      AXE_SW_PHY_SELECT_EXT | AXE_SW_PHY_SELECT_SS_MII, ((void*)0));
  uether_pause(&sc->sc_ue, hz / 32);
 }

 axe_cmd(sc, AXE_CMD_SW_RESET_REG, 0, AXE_SW_RESET_IPPD |
     AXE_SW_RESET_IPRL, ((void*)0));
 uether_pause(&sc->sc_ue, hz / 4);
 axe_cmd(sc, AXE_CMD_SW_RESET_REG, 0, AXE_SW_RESET_IPRL, ((void*)0));
 uether_pause(&sc->sc_ue, hz);
 axe_cmd(sc, AXE_CMD_SW_RESET_REG, 0, AXE_SW_RESET_CLEAR, ((void*)0));
 uether_pause(&sc->sc_ue, hz / 32);
 axe_cmd(sc, AXE_CMD_SW_RESET_REG, 0, AXE_SW_RESET_IPRL, ((void*)0));
 uether_pause(&sc->sc_ue, hz / 32);
}
