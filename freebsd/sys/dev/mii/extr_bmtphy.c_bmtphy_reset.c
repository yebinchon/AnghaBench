
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct mii_softc {scalar_t__ mii_mpd_model; } ;


 int MII_BMTPHY_AUX2 ;
 int MII_BMTPHY_INTR ;
 scalar_t__ MII_MODEL_xxBROADCOM_BCM5221 ;
 int PHY_READ (struct mii_softc*,int) ;
 int PHY_WRITE (struct mii_softc*,int,int) ;
 int mii_phy_reset (struct mii_softc*) ;

__attribute__((used)) static void
bmtphy_reset(struct mii_softc *sc)
{
 u_int16_t data;

 mii_phy_reset(sc);

 if (sc->mii_mpd_model == MII_MODEL_xxBROADCOM_BCM5221) {

  data = PHY_READ(sc, 0x1f);
  PHY_WRITE(sc, 0x1f, data | 0x0080);


  data = PHY_READ(sc, MII_BMTPHY_AUX2);
  PHY_WRITE(sc, MII_BMTPHY_AUX2, data | 0x0020);


  data = PHY_READ(sc, MII_BMTPHY_INTR);
  PHY_WRITE(sc, MII_BMTPHY_INTR, data | 0x0004);


  data = PHY_READ(sc, 0x1f);
  PHY_WRITE(sc, 0x1f, data & ~0x0080);
 }
}
