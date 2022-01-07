
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_softc {int mii_ticks; int mii_anegticks; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;


 int EJUSTRETURN ;
 int IFM_AUTO ;
 int IFM_SUBTYPE (int ) ;



 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_RESET (struct mii_softc*) ;
 int PHY_STATUS (struct mii_softc*) ;
 int RUEPHY_MII_MSR ;
 int RUEPHY_MSR_LINK ;
 int mii_phy_auto (struct mii_softc*) ;
 int mii_phy_setmedia (struct mii_softc*) ;
 int mii_phy_update (struct mii_softc*,int) ;

__attribute__((used)) static int
ruephy_service(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
 int reg;

 switch (cmd) {
 case 129:
  break;

 case 130:
  mii_phy_setmedia(sc);
  break;

 case 128:



  if (IFM_SUBTYPE(ife->ifm_media) != IFM_AUTO)
   break;






  reg = PHY_READ(sc, RUEPHY_MII_MSR) |
      PHY_READ(sc, RUEPHY_MII_MSR);
  if (reg & RUEPHY_MSR_LINK)
   break;


  if (sc->mii_ticks <= sc->mii_anegticks)
   break;

  sc->mii_ticks = 0;
  PHY_RESET(sc);
  if (mii_phy_auto(sc) == EJUSTRETURN)
   return (0);
  break;
 }


 PHY_STATUS(sc);


 mii_phy_update(sc, cmd);

 return (0);
}
