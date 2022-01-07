
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct aue_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct aue_softc {int dummy; } ;


 int AUE_LOCK (struct aue_softc*) ;
 int AUE_UNLOCK (struct aue_softc*) ;
 struct mii_data* GET_MII (struct aue_softc*) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
aue_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct aue_softc *sc = ifp->if_softc;
 struct mii_data *mii = GET_MII(sc);

 AUE_LOCK(sc);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 AUE_UNLOCK(sc);
}
