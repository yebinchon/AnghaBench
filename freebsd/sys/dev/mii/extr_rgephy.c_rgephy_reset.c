
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mii_softc {int mii_mpd_rev; int mii_flags; } ;


 int DELAY (int) ;
 int MIIF_PHYPRIV0 ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int RGEPHY_8211B ;


 int RGEPHY_F_MII_PCR1 ;
 int RGEPHY_F_PCR1_ALDPS_EN ;
 int RGEPHY_F_PCR1_MDI_MM ;
 int RGEPHY_MII_PCR ;
 int RGEPHY_MII_SSR ;
 int RGEPHY_PCR_MDIX_AUTO ;
 int RGEPHY_PCR_MDI_MASK ;
 int RGEPHY_SSR_ALDPS ;
 int mii_phy_reset (struct mii_softc*) ;
 int rgephy_disable_eee (struct mii_softc*) ;
 int rgephy_load_dspcode (struct mii_softc*) ;

__attribute__((used)) static void
rgephy_reset(struct mii_softc *sc)
{
 uint16_t pcr, ssr;

 switch (sc->mii_mpd_rev) {
 case 128:
  pcr = PHY_READ(sc, RGEPHY_F_MII_PCR1);
  pcr &= ~(RGEPHY_F_PCR1_MDI_MM | RGEPHY_F_PCR1_ALDPS_EN);
  PHY_WRITE(sc, RGEPHY_F_MII_PCR1, pcr);
  rgephy_disable_eee(sc);
  break;
 case 129:
  if ((sc->mii_flags & MIIF_PHYPRIV0) == 0) {

   ssr = PHY_READ(sc, RGEPHY_MII_SSR);
   if ((ssr & RGEPHY_SSR_ALDPS) != 0) {
    ssr &= ~RGEPHY_SSR_ALDPS;
    PHY_WRITE(sc, RGEPHY_MII_SSR, ssr);
   }
  }

 default:
  if (sc->mii_mpd_rev >= RGEPHY_8211B) {
   pcr = PHY_READ(sc, RGEPHY_MII_PCR);
   if ((pcr & RGEPHY_PCR_MDIX_AUTO) == 0) {
    pcr &= ~RGEPHY_PCR_MDI_MASK;
    pcr |= RGEPHY_PCR_MDIX_AUTO;
    PHY_WRITE(sc, RGEPHY_MII_PCR, pcr);
   }
  }
  break;
 }

 mii_phy_reset(sc);
 DELAY(1000);
 rgephy_load_dspcode(sc);
}
