
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsec_softc {struct mii_data* tsec_mii; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct tsec_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;


 int TSEC_TRANSMIT_LOCK (struct tsec_softc*) ;
 int TSEC_TRANSMIT_UNLOCK (struct tsec_softc*) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
tsec_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct tsec_softc *sc = ifp->if_softc;
 struct mii_data *mii;

 TSEC_TRANSMIT_LOCK(sc);

 mii = sc->tsec_mii;
 mii_pollstat(mii);

 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;

 TSEC_TRANSMIT_UNLOCK(sc);
}
