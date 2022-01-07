
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xae_softc {struct mii_data* mii_softc; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct xae_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;


 int XAE_LOCK (struct xae_softc*) ;
 int XAE_UNLOCK (struct xae_softc*) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
xae_media_status(struct ifnet * ifp, struct ifmediareq *ifmr)
{
 struct xae_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 mii = sc->mii_softc;

 XAE_LOCK(sc);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 XAE_UNLOCK(sc);
}
