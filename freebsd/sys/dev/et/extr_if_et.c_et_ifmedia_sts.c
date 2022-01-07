
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_flags; struct et_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct et_softc {int sc_miibus; } ;


 int ET_LOCK (struct et_softc*) ;
 int ET_UNLOCK (struct et_softc*) ;
 int IFF_UP ;
 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
et_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct et_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 ET_LOCK(sc);
 if ((ifp->if_flags & IFF_UP) == 0) {
  ET_UNLOCK(sc);
  return;
 }

 mii = device_get_softc(sc->sc_miibus);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 ET_UNLOCK(sc);
}
