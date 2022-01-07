
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_softc {int dummy; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {int mii_media_active; TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;


 int EINVAL ;
 int EJUSTRETURN ;
 scalar_t__ IFM_10_T ;
 int const IFM_ETHER ;

 scalar_t__ IFM_SUBTYPE (int) ;



 int PHY_STATUS (struct mii_softc*) ;
 int mii_phy_setmedia (struct mii_softc*) ;
 int mii_phy_tick (struct mii_softc*) ;
 int mii_phy_update (struct mii_softc*,int) ;

__attribute__((used)) static int
pnaphy_service(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;

 switch (cmd) {
 case 129:
  break;

 case 130:
  switch (IFM_SUBTYPE(ife->ifm_media)) {
  case 131:
   mii_phy_setmedia(sc);
   break;
  default:
   return (EINVAL);
  }
  break;

 case 128:
  if (mii_phy_tick(sc) == EJUSTRETURN)
   return (0);
  break;
 }


 PHY_STATUS(sc);
 if (IFM_SUBTYPE(mii->mii_media_active) == IFM_10_T)
  mii->mii_media_active = IFM_ETHER | 131;


 mii_phy_update(sc, cmd);
 return (0);
}
