
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_active; int mii_media_status; } ;
struct ifnet {struct al_eth_adapter* if_softc; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;
struct al_eth_adapter {struct mii_data* mii; } ;


 int IFM_ETHER ;
 int IFM_NONE ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
al_media_status(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct al_eth_adapter *sc = ifp->if_softc;
 struct mii_data *mii;

 if (sc->mii == ((void*)0)) {
  ifmr->ifm_active = IFM_ETHER | IFM_NONE;
  ifmr->ifm_status = 0;

  return;
 }

 mii = sc->mii;
 mii_pollstat(mii);

 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
}
