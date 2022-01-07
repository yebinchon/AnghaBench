
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mii_softc {int mii_flags; scalar_t__ mii_mpd_rev; } ;


 int MIIF_PHYPRIV0 ;
 int MIIF_PHYPRIV1 ;
 int PHY_READ (struct mii_softc*,int ) ;
 scalar_t__ RGEPHY_8211B ;
 scalar_t__ RGEPHY_8211F ;
 int RGEPHY_F_MII_SSR ;
 int RGEPHY_F_SSR_LINK ;
 int RGEPHY_MII_SSR ;
 int RGEPHY_SSR_LINK ;
 int RL_GMEDIASTAT ;
 int RL_GMEDIASTAT_LINK ;
 int URE_GMEDIASTAT ;

__attribute__((used)) static int
rgephy_linkup(struct mii_softc *sc)
{
 int linkup;
 uint16_t reg;

 linkup = 0;
 if ((sc->mii_flags & MIIF_PHYPRIV0) == 0 &&
     sc->mii_mpd_rev >= RGEPHY_8211B) {
  if (sc->mii_mpd_rev == RGEPHY_8211F) {
   reg = PHY_READ(sc, RGEPHY_F_MII_SSR);
   if (reg & RGEPHY_F_SSR_LINK)
    linkup++;
  } else {
   reg = PHY_READ(sc, RGEPHY_MII_SSR);
   if (reg & RGEPHY_SSR_LINK)
    linkup++;
  }
 } else {
  if (sc->mii_flags & MIIF_PHYPRIV1)
   reg = PHY_READ(sc, URE_GMEDIASTAT);
  else
   reg = PHY_READ(sc, RL_GMEDIASTAT);
  if (reg & RL_GMEDIASTAT_LINK)
   linkup++;
 }

 return (linkup);
}
