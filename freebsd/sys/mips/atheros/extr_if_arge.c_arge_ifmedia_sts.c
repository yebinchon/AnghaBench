
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct arge_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct arge_softc {int arge_miibus; } ;


 int ARGE_LOCK (struct arge_softc*) ;
 int ARGE_UNLOCK (struct arge_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
arge_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct arge_softc *sc = ifp->if_softc;
 struct mii_data *mii;

 mii = device_get_softc(sc->arge_miibus);
 ARGE_LOCK(sc);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 ARGE_UNLOCK(sc);
}
