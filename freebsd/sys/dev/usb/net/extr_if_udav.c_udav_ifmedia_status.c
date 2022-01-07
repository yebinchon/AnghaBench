
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udav_softc {int dummy; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct udav_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;


 struct mii_data* GET_MII (struct udav_softc*) ;
 int UDAV_LOCK (struct udav_softc*) ;
 int UDAV_UNLOCK (struct udav_softc*) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
udav_ifmedia_status(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct udav_softc *sc = ifp->if_softc;
 struct mii_data *mii = GET_MII(sc);

 UDAV_LOCK(sc);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 UDAV_UNLOCK(sc);
}
