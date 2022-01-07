
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axe_softc {scalar_t__ sc_phyno; int sc_ue; } ;


 scalar_t__ AXE_772_PHY_NO_EPHY ;
 int AXE_CMD_RXCTL_WRITE ;
 int AXE_CMD_SW_PHY_SELECT ;
 int AXE_CMD_SW_RESET_REG ;
 int AXE_CMD_WRITE_GPIO ;
 int AXE_SW_RESET_CLEAR ;
 int AXE_SW_RESET_IPPD ;
 int AXE_SW_RESET_IPRL ;
 int AXE_SW_RESET_PRL ;
 int axe_cmd (struct axe_softc*,int ,int ,int,int *) ;
 int hz ;
 int uether_pause (int *,int) ;

__attribute__((used)) static void
axe_ax88772_init(struct axe_softc *sc)
{
 axe_cmd(sc, AXE_CMD_WRITE_GPIO, 0, 0x00b0, ((void*)0));
 uether_pause(&sc->sc_ue, hz / 16);

 if (sc->sc_phyno == AXE_772_PHY_NO_EPHY) {

  axe_cmd(sc, AXE_CMD_SW_PHY_SELECT, 0, 0x01, ((void*)0));
  uether_pause(&sc->sc_ue, hz / 64);


  axe_cmd(sc, AXE_CMD_SW_RESET_REG, 0,
      AXE_SW_RESET_CLEAR, ((void*)0));
  uether_pause(&sc->sc_ue, hz / 16);


  axe_cmd(sc, AXE_CMD_SW_RESET_REG, 0,
      AXE_SW_RESET_IPPD | AXE_SW_RESET_PRL, ((void*)0));
  uether_pause(&sc->sc_ue, hz / 4);


  axe_cmd(sc, AXE_CMD_SW_RESET_REG, 0, AXE_SW_RESET_PRL, ((void*)0));


  axe_cmd(sc, AXE_CMD_SW_RESET_REG, 0,
      AXE_SW_RESET_IPRL | AXE_SW_RESET_PRL, ((void*)0));
 } else {

  axe_cmd(sc, AXE_CMD_SW_PHY_SELECT, 0, 0x00, ((void*)0));
  uether_pause(&sc->sc_ue, hz / 64);


  axe_cmd(sc, AXE_CMD_SW_RESET_REG, 0,
      AXE_SW_RESET_IPPD | AXE_SW_RESET_PRL, ((void*)0));
 }

 uether_pause(&sc->sc_ue, hz / 4);
 axe_cmd(sc, AXE_CMD_RXCTL_WRITE, 0, 0, ((void*)0));
}
