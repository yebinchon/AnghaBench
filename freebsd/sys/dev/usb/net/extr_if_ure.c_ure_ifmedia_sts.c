
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ure_softc {int dummy; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct ure_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;


 struct mii_data* GET_MII (struct ure_softc*) ;
 int URE_LOCK (struct ure_softc*) ;
 int URE_UNLOCK (struct ure_softc*) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
ure_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct ure_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 mii = GET_MII(sc);

 URE_LOCK(sc);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 URE_UNLOCK(sc);
}
