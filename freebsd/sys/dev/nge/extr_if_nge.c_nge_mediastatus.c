
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nge_softc {int nge_miibus; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct nge_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;


 int NGE_LOCK (struct nge_softc*) ;
 int NGE_UNLOCK (struct nge_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
nge_mediastatus(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct nge_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 NGE_LOCK(sc);
 mii = device_get_softc(sc->nge_miibus);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 NGE_UNLOCK(sc);
}
