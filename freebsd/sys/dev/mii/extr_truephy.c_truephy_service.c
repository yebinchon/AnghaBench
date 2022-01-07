
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_softc {int dummy; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;


 int BMCR_AUTOEN ;
 int BMCR_PDOWN ;
 int BMCR_STARTNEG ;
 int EJUSTRETURN ;
 int IFM_1000_T ;
 int IFM_AUTO ;
 int IFM_SUBTYPE (int ) ;
 int MII_BMCR ;



 int PHY_READ (struct mii_softc*,int ) ;
 int PHY_STATUS (struct mii_softc*) ;
 int PHY_WRITE (struct mii_softc*,int ,int) ;
 int mii_phy_setmedia (struct mii_softc*) ;
 int mii_phy_tick (struct mii_softc*) ;
 int mii_phy_update (struct mii_softc*,int) ;

__attribute__((used)) static int
truephy_service(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
 int bmcr;

 switch (cmd) {
 case 129:
  break;

 case 130:
  if (IFM_SUBTYPE(ife->ifm_media) != IFM_AUTO) {
   bmcr = PHY_READ(sc, MII_BMCR) & ~BMCR_AUTOEN;
   PHY_WRITE(sc, MII_BMCR, bmcr);
   PHY_WRITE(sc, MII_BMCR, bmcr | BMCR_PDOWN);
  }

  mii_phy_setmedia(sc);

  if (IFM_SUBTYPE(ife->ifm_media) != IFM_AUTO) {
   bmcr = PHY_READ(sc, MII_BMCR) & ~BMCR_PDOWN;
   PHY_WRITE(sc, MII_BMCR, bmcr);

   if (IFM_SUBTYPE(ife->ifm_media) == IFM_1000_T) {
    PHY_WRITE(sc, MII_BMCR,
        bmcr | BMCR_AUTOEN | BMCR_STARTNEG);
   }
  }
  break;

 case 128:
  if (mii_phy_tick(sc) == EJUSTRETURN)
   return (0);
  break;
 }


 PHY_STATUS(sc);


 mii_phy_update(sc, cmd);
 return (0);
}
