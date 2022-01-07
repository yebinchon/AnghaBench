
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {int mii_flags; scalar_t__ mii_mpd_model; int mii_capabilities; } ;


 int ANAR_CSMA ;
 int BMSR_MEDIA_TO_ANAR (int ) ;
 int BRGPHY_1000CTL_AFD ;
 int BRGPHY_1000CTL_AHD ;
 int BRGPHY_1000CTL_MSC ;
 int BRGPHY_1000CTL_MSE ;
 int BRGPHY_ANAR_ASP ;
 int BRGPHY_ANAR_PC ;
 int BRGPHY_BMCR_AUTOEN ;
 int BRGPHY_BMCR_STARTNEG ;
 int BRGPHY_MII_1000CTL ;
 int BRGPHY_MII_ANAR ;
 int BRGPHY_MII_BMCR ;
 int BRGPHY_MII_IMR ;
 int BRGPHY_SERDES_ANAR ;
 int BRGPHY_SERDES_ANAR_BOTH_PAUSE ;
 int BRGPHY_SERDES_ANAR_FDX ;
 int BRGPHY_SERDES_ANAR_HDX ;
 int IFM_FLOW ;
 int MIIF_FORCEPAUSE ;
 int MIIF_HAVEFIBER ;
 scalar_t__ MII_MODEL_BROADCOM_BCM5701 ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_RESET (struct mii_softc*) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;

__attribute__((used)) static void
brgphy_mii_phy_auto(struct mii_softc *sc, int media)
{
 int anar, ktcr = 0;

 PHY_RESET(sc);

 if ((sc->mii_flags & MIIF_HAVEFIBER) == 0) {
  anar = BMSR_MEDIA_TO_ANAR(sc->mii_capabilities) | ANAR_CSMA;
  if ((media & IFM_FLOW) != 0 ||
      (sc->mii_flags & MIIF_FORCEPAUSE) != 0)
   anar |= BRGPHY_ANAR_PC | BRGPHY_ANAR_ASP;
  PHY_WRITE(sc, BRGPHY_MII_ANAR, anar);
  ktcr = BRGPHY_1000CTL_AFD | BRGPHY_1000CTL_AHD;
  if (sc->mii_mpd_model == MII_MODEL_BROADCOM_BCM5701)
   ktcr |= BRGPHY_1000CTL_MSE | BRGPHY_1000CTL_MSC;
  PHY_WRITE(sc, BRGPHY_MII_1000CTL, ktcr);
  PHY_READ(sc, BRGPHY_MII_1000CTL);
 } else {
  anar = BRGPHY_SERDES_ANAR_FDX | BRGPHY_SERDES_ANAR_HDX;
  if ((media & IFM_FLOW) != 0 ||
      (sc->mii_flags & MIIF_FORCEPAUSE) != 0)
   anar |= BRGPHY_SERDES_ANAR_BOTH_PAUSE;
  PHY_WRITE(sc, BRGPHY_SERDES_ANAR, anar);
 }

 PHY_WRITE(sc, BRGPHY_MII_BMCR, BRGPHY_BMCR_AUTOEN |
     BRGPHY_BMCR_STARTNEG);
 PHY_WRITE(sc, BRGPHY_MII_IMR, 0xFF00);
}
