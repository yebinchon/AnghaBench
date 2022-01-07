
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vge_softc {int vge_miibus; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_flags; struct vge_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;


 int IFF_UP ;
 int VGE_LOCK (struct vge_softc*) ;
 int VGE_UNLOCK (struct vge_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
vge_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct vge_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 mii = device_get_softc(sc->vge_miibus);

 VGE_LOCK(sc);
 if ((ifp->if_flags & IFF_UP) == 0) {
  VGE_UNLOCK(sc);
  return;
 }
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 VGE_UNLOCK(sc);
}
