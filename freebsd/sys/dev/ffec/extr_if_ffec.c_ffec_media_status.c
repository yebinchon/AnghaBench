
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct ffec_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct ffec_softc {struct mii_data* mii_softc; } ;


 int FFEC_LOCK (struct ffec_softc*) ;
 int FFEC_UNLOCK (struct ffec_softc*) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
ffec_media_status(struct ifnet * ifp, struct ifmediareq *ifmr)
{
 struct ffec_softc *sc;
 struct mii_data *mii;


 sc = ifp->if_softc;
 mii = sc->mii_softc;
 FFEC_LOCK(sc);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 FFEC_UNLOCK(sc);
}
