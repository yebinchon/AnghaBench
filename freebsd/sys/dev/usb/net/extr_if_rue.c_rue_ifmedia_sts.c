
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rue_softc {int dummy; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct rue_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;


 struct mii_data* GET_MII (struct rue_softc*) ;
 int RUE_LOCK (struct rue_softc*) ;
 int RUE_UNLOCK (struct rue_softc*) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
rue_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct rue_softc *sc = ifp->if_softc;
 struct mii_data *mii = GET_MII(sc);

 RUE_LOCK(sc);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 RUE_UNLOCK(sc);
}
