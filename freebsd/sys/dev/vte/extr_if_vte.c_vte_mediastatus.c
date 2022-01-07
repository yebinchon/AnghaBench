
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vte_softc {int vte_miibus; } ;
struct mii_data {int mii_media_active; int mii_media_status; } ;
struct ifnet {int if_flags; struct vte_softc* if_softc; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;


 int IFF_UP ;
 int VTE_LOCK (struct vte_softc*) ;
 int VTE_UNLOCK (struct vte_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
vte_mediastatus(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct vte_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 VTE_LOCK(sc);
 if ((ifp->if_flags & IFF_UP) == 0) {
  VTE_UNLOCK(sc);
  return;
 }
 mii = device_get_softc(sc->vte_miibus);

 mii_pollstat(mii);
 ifmr->ifm_status = mii->mii_media_status;
 ifmr->ifm_active = mii->mii_media_active;
 VTE_UNLOCK(sc);
}
