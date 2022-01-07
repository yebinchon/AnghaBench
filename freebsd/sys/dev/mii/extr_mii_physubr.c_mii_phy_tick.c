
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mii_softc {scalar_t__ mii_ticks; scalar_t__ mii_anegticks; TYPE_2__* mii_pdata; } ;
struct ifmedia_entry {int ifm_media; } ;
struct TYPE_3__ {struct ifmedia_entry* ifm_cur; } ;
struct TYPE_4__ {TYPE_1__ mii_media; } ;


 int BMSR_LINK ;
 int EJUSTRETURN ;
 scalar_t__ IFM_AUTO ;
 scalar_t__ IFM_SUBTYPE (int ) ;
 scalar_t__ MII_ANEGTICKS_GIGE ;
 int MII_BMSR ;
 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_RESET (struct mii_softc*) ;
 int mii_phy_auto (struct mii_softc*) ;

int
mii_phy_tick(struct mii_softc *sc)
{
 struct ifmedia_entry *ife = sc->mii_pdata->mii_media.ifm_cur;
 int reg;







 if (IFM_SUBTYPE(ife->ifm_media) != IFM_AUTO) {
  sc->mii_ticks = 0;
  return (0);
 }


 reg = PHY_READ(sc, MII_BMSR) | PHY_READ(sc, MII_BMSR);
 if ((reg & BMSR_LINK) != 0) {
  sc->mii_ticks = 0;

  return (0);
 }


 if (sc->mii_ticks++ == 0)
  return (0);


 if (sc->mii_anegticks == 0)
  sc->mii_anegticks = MII_ANEGTICKS_GIGE;


 if (sc->mii_ticks <= sc->mii_anegticks)
  return (EJUSTRETURN);

 sc->mii_ticks = 0;
 PHY_RESET(sc);
 mii_phy_auto(sc);
 return (0);
}
