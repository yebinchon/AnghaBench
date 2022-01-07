
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct bfe_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct bfe_softc {int bfe_miibus; } ;


 int BFE_LOCK (struct bfe_softc*) ;
 int BFE_UNLOCK (struct bfe_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
bfe_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct bfe_softc *sc = ifp->if_softc;
 struct mii_data *mii;

 BFE_LOCK(sc);
 mii = device_get_softc(sc->bfe_miibus);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 BFE_UNLOCK(sc);
}
