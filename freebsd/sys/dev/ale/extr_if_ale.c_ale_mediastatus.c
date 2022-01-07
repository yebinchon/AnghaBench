
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_active; int mii_media_status; } ;
struct ifnet {int if_flags; struct ale_softc* if_softc; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;
struct ale_softc {int ale_miibus; } ;


 int ALE_LOCK (struct ale_softc*) ;
 int ALE_UNLOCK (struct ale_softc*) ;
 int IFF_UP ;
 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
ale_mediastatus(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct ale_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 ALE_LOCK(sc);
 if ((ifp->if_flags & IFF_UP) == 0) {
  ALE_UNLOCK(sc);
  return;
 }
 mii = device_get_softc(sc->ale_miibus);

 mii_pollstat(mii);
 ifmr->ifm_status = mii->mii_media_status;
 ifmr->ifm_active = mii->mii_media_active;
 ALE_UNLOCK(sc);
}
