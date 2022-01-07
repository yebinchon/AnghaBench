
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlphy_softc {int sc_mii; scalar_t__ sc_need_acomp; } ;


 int ANAR_10_FD ;
 int ANER_LPAN ;
 int BMCR_FDX ;
 int MII_ANAR ;
 int MII_ANER ;
 int MII_ANLPAR ;
 int MII_BMCR ;
 int PHY_READ (int *,int ) ;
 int PHY_WRITE (int *,int ,int ) ;

__attribute__((used)) static void
tlphy_acomp(struct tlphy_softc *sc)
{
 int aner, anlpar;

 sc->sc_need_acomp = 0;







 aner = PHY_READ(&sc->sc_mii, MII_ANER);
 if (aner & ANER_LPAN) {
  anlpar = PHY_READ(&sc->sc_mii, MII_ANLPAR) &
      PHY_READ(&sc->sc_mii, MII_ANAR);
  if (anlpar & ANAR_10_FD) {
   PHY_WRITE(&sc->sc_mii, MII_BMCR, BMCR_FDX);
   return;
  }
 }
 PHY_WRITE(&sc->sc_mii, MII_BMCR, 0);
}
