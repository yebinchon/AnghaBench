
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {scalar_t__ mii_mpd_model; } ;


 int MII_KSZ8081_PHYCTL2 ;
 scalar_t__ MII_MODEL_MICREL_KSZ8081 ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int mii_phy_reset (struct mii_softc*) ;

__attribute__((used)) static void
micphy_reset(struct mii_softc *sc)
{
 int reg;







 if (sc->mii_mpd_model == MII_MODEL_MICREL_KSZ8081)
  reg = PHY_READ(sc, MII_KSZ8081_PHYCTL2);
 mii_phy_reset(sc);
 if (sc->mii_mpd_model == MII_MODEL_MICREL_KSZ8081)
  PHY_WRITE(sc, MII_KSZ8081_PHYCTL2, reg);
}
