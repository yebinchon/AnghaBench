
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_softc {int sis_miibus; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct sis_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;


 int SIS_LOCK (struct sis_softc*) ;
 int SIS_UNLOCK (struct sis_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
sis_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct sis_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;

 SIS_LOCK(sc);
 mii = device_get_softc(sc->sis_miibus);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 SIS_UNLOCK(sc);
}
