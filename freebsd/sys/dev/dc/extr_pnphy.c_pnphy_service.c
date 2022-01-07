
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_softc {int mii_dev; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {int mii_media_active; int mii_ifp; TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;


 int EINVAL ;
 int IFF_UP ;


 int const IFM_ETHER ;
 int IFM_FDX ;
 int IFM_SUBTYPE (int) ;
 int MIIBUS_STATCHG (int ) ;



 int PHY_STATUS (struct mii_softc*) ;
 int if_getflags (int ) ;
 int mii_phy_update (struct mii_softc*,int) ;

__attribute__((used)) static int
pnphy_service(struct mii_softc *sc, struct mii_data *mii, int cmd)
{
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;

 switch (cmd) {
 case 129:
  break;

 case 130:



  if ((if_getflags(mii->mii_ifp) & IFF_UP) == 0)
   break;




  switch (IFM_SUBTYPE(ife->ifm_media)) {
  case 132:
   mii->mii_media_active = IFM_ETHER | 132;
   if ((ife->ifm_media & IFM_FDX) != 0)
    mii->mii_media_active |= IFM_FDX;
   MIIBUS_STATCHG(sc->mii_dev);
   return (0);
  case 131:
   mii->mii_media_active = IFM_ETHER | 131;
   if ((ife->ifm_media & IFM_FDX) != 0)
    mii->mii_media_active |= IFM_FDX;
   MIIBUS_STATCHG(sc->mii_dev);
   return (0);
  default:
   return (EINVAL);
  }
  break;

 case 128:



  if ((if_getflags(mii->mii_ifp) & IFF_UP) == 0)
   return (0);

  break;
 }


 PHY_STATUS(sc);


 mii_phy_update(sc, cmd);
 return (0);
}
