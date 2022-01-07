
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct axe_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct axe_softc {int dummy; } ;


 int AXE_LOCK (struct axe_softc*) ;
 int AXE_UNLOCK (struct axe_softc*) ;
 struct mii_data* GET_MII (struct axe_softc*) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
axe_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct axe_softc *sc = ifp->if_softc;
 struct mii_data *mii = GET_MII(sc);

 AXE_LOCK(sc);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 AXE_UNLOCK(sc);
}
