
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msk_if_softc {int msk_miibus; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_flags; struct msk_if_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;


 int IFF_UP ;
 int MSK_IF_LOCK (struct msk_if_softc*) ;
 int MSK_IF_UNLOCK (struct msk_if_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
msk_mediastatus(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct msk_if_softc *sc_if;
 struct mii_data *mii;

 sc_if = ifp->if_softc;
 MSK_IF_LOCK(sc_if);
 if ((ifp->if_flags & IFF_UP) == 0) {
  MSK_IF_UNLOCK(sc_if);
  return;
 }
 mii = device_get_softc(sc_if->msk_miibus);

 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 MSK_IF_UNLOCK(sc_if);
}
