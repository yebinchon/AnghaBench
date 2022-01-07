
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_dunit; int * if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
typedef int e6000sw_softc_t ;


 struct mii_data* e6000sw_miiforphy (int *,int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
e6000sw_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 e6000sw_softc_t *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 mii = e6000sw_miiforphy(sc, ifp->if_dunit);

 if (mii == ((void*)0))
  return;

 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
}
