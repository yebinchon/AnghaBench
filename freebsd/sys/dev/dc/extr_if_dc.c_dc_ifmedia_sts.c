
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmedia {int ifm_media; } ;
struct mii_data {int mii_media_status; int mii_media_active; struct ifmedia mii_media; } ;
struct ifnet {struct dc_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct dc_softc {int dc_miibus; } ;


 scalar_t__ DC_IS_DAVICOM (struct dc_softc*) ;
 int DC_LOCK (struct dc_softc*) ;
 int DC_UNLOCK (struct dc_softc*) ;
 scalar_t__ IFM_HPNA_1 ;
 scalar_t__ IFM_SUBTYPE (int ) ;
 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
dc_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct dc_softc *sc;
 struct mii_data *mii;
 struct ifmedia *ifm;

 sc = ifp->if_softc;
 mii = device_get_softc(sc->dc_miibus);
 DC_LOCK(sc);
 mii_pollstat(mii);
 ifm = &mii->mii_media;
 if (DC_IS_DAVICOM(sc)) {
  if (IFM_SUBTYPE(ifm->ifm_media) == IFM_HPNA_1) {
   ifmr->ifm_active = ifm->ifm_media;
   ifmr->ifm_status = 0;
   DC_UNLOCK(sc);
   return;
  }
 }
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 DC_UNLOCK(sc);
}
