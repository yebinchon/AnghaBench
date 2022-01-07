
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct axge_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct axge_softc {int dummy; } ;


 int AXGE_LOCK (struct axge_softc*) ;
 int AXGE_UNLOCK (struct axge_softc*) ;
 struct mii_data* GET_MII (struct axge_softc*) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
axge_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct axge_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 mii = GET_MII(sc);
 AXGE_LOCK(sc);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 AXGE_UNLOCK(sc);
}
