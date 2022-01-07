
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_active; int mii_media_status; } ;
struct mge_softc {struct mii_data* mii; int phy_attached; } ;
struct ifnet {struct mge_softc* if_softc; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;


 int IFM_1000_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int MGE_GLOBAL_LOCK (struct mge_softc*) ;
 int MGE_GLOBAL_UNLOCK (struct mge_softc*) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
mge_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct mge_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 MGE_GLOBAL_LOCK(sc);

 if (!sc->phy_attached) {
  ifmr->ifm_active = IFM_1000_T | IFM_FDX | IFM_ETHER;
  ifmr->ifm_status = IFM_AVALID | IFM_ACTIVE;
  goto out_unlock;
 }

 mii = sc->mii;
 mii_pollstat(mii);

 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;

out_unlock:
 MGE_GLOBAL_UNLOCK(sc);
}
