
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct atse_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct atse_softc {int atse_miibus; } ;


 int ATSE_LOCK (struct atse_softc*) ;
 int ATSE_UNLOCK (struct atse_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
atse_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct atse_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;

 ATSE_LOCK(sc);
 mii = device_get_softc(sc->atse_miibus);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 ATSE_UNLOCK(sc);
}
