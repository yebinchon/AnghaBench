
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct muge_softc {int sc_ue; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct muge_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;


 int MUGE_LOCK (struct muge_softc*) ;
 int MUGE_UNLOCK (struct muge_softc*) ;
 int mii_pollstat (struct mii_data*) ;
 struct mii_data* uether_getmii (int *) ;

__attribute__((used)) static void
muge_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct muge_softc *sc = ifp->if_softc;
 struct mii_data *mii = uether_getmii(&sc->sc_ue);

 MUGE_LOCK(sc);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 MUGE_UNLOCK(sc);
}
