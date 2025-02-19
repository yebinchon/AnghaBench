
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mii_softc {int mii_flags; int mii_capabilities; } ;


 int ANAR_CSMA ;
 int ANAR_FC ;
 int BMCR_AUTOEN ;
 int BMCR_STARTNEG ;
 int BMSR_MEDIA_TO_ANAR (int ) ;
 int IFM_FLOW ;
 int MIIF_FORCEPAUSE ;
 int MII_ANAR ;
 int MII_BMCR ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;

__attribute__((used)) static void
smscphy_auto(struct mii_softc *sc, int media)
{
 uint16_t anar;

 anar = BMSR_MEDIA_TO_ANAR(sc->mii_capabilities) | ANAR_CSMA;
 if ((media & IFM_FLOW) != 0 || (sc->mii_flags & MIIF_FORCEPAUSE) != 0)
  anar |= ANAR_FC;
 PHY_WRITE(sc, MII_ANAR, anar);

 anar = PHY_READ(sc, MII_ANAR);
 PHY_WRITE(sc, MII_BMCR, BMCR_AUTOEN | BMCR_STARTNEG);
}
