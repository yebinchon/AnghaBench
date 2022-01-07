
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axe_softc {int * sc_phyaddrs; } ;


 int AXE_PHY_NO (int ) ;
 int AXE_PHY_TYPE (int ) ;






__attribute__((used)) static int
axe_get_phyno(struct axe_softc *sc, int sel)
{
 int phyno;

 switch (AXE_PHY_TYPE(sc->sc_phyaddrs[sel])) {
 case 132:
 case 131:
  phyno = AXE_PHY_NO(sc->sc_phyaddrs[sel]);
  break;
 case 128:

 case 129:

 case 130:

 default:
  phyno = -1;
  break;
 }

 return (phyno);
}
