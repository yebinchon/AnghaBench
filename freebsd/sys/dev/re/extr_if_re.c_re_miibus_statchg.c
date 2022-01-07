
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rl_softc {int rl_flags; struct ifnet* rl_ifp; int rl_miibus; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
typedef int device_t ;


 int IFF_DRV_RUNNING ;



 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_SUBTYPE (int ) ;
 int RL_FLAG_FASTETHER ;
 int RL_FLAG_LINK ;
 void* device_get_softc (int ) ;

__attribute__((used)) static void
re_miibus_statchg(device_t dev)
{
 struct rl_softc *sc;
 struct ifnet *ifp;
 struct mii_data *mii;

 sc = device_get_softc(dev);
 mii = device_get_softc(sc->rl_miibus);
 ifp = sc->rl_ifp;
 if (mii == ((void*)0) || ifp == ((void*)0) ||
     (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return;

 sc->rl_flags &= ~RL_FLAG_LINK;
 if ((mii->mii_media_status & (IFM_ACTIVE | IFM_AVALID)) ==
     (IFM_ACTIVE | IFM_AVALID)) {
  switch (IFM_SUBTYPE(mii->mii_media_active)) {
  case 128:
  case 129:
   sc->rl_flags |= RL_FLAG_LINK;
   break;
  case 130:
   if ((sc->rl_flags & RL_FLAG_FASTETHER) != 0)
    break;
   sc->rl_flags |= RL_FLAG_LINK;
   break;
  default:
   break;
  }
 }




}
