
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_softc {scalar_t__ mii_mpd_model; scalar_t__ mii_mpd_rev; int mii_dev; } ;


 int DELAY (int) ;
 scalar_t__ MII_MODEL_REALTEK_RTL8251 ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_WRITE (struct mii_softc*,int ,int ) ;
 scalar_t__ RGEPHY_8211B ;
 int RGEPHY_BMCR_PDOWN ;
 int RGEPHY_BMSR_LINK ;
 int RGEPHY_MII_BMCR ;
 int RGEPHY_MII_BMSR ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
rgephy_loop(struct mii_softc *sc)
{
 int i;

 if (sc->mii_mpd_model != MII_MODEL_REALTEK_RTL8251 &&
     sc->mii_mpd_rev < RGEPHY_8211B) {
  PHY_WRITE(sc, RGEPHY_MII_BMCR, RGEPHY_BMCR_PDOWN);
  DELAY(1000);
 }

 for (i = 0; i < 15000; i++) {
  if (!(PHY_READ(sc, RGEPHY_MII_BMSR) & RGEPHY_BMSR_LINK)) {



   break;
  }
  DELAY(10);
 }
}
