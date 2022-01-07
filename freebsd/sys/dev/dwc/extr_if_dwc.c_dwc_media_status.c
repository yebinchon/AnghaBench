
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct dwc_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct dwc_softc {struct mii_data* mii_softc; } ;


 int DWC_LOCK (struct dwc_softc*) ;
 int DWC_UNLOCK (struct dwc_softc*) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
dwc_media_status(struct ifnet * ifp, struct ifmediareq *ifmr)
{
 struct dwc_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 mii = sc->mii_softc;
 DWC_LOCK(sc);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 DWC_UNLOCK(sc);
}
