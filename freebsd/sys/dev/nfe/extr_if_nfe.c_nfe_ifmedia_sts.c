
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_softc {int nfe_miibus; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
typedef int if_t ;


 int NFE_LOCK (struct nfe_softc*) ;
 int NFE_UNLOCK (struct nfe_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 struct nfe_softc* if_getsoftc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
nfe_ifmedia_sts(if_t ifp, struct ifmediareq *ifmr)
{
 struct nfe_softc *sc;
 struct mii_data *mii;

 sc = if_getsoftc(ifp);

 NFE_LOCK(sc);
 mii = device_get_softc(sc->nfe_miibus);
 mii_pollstat(mii);

 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 NFE_UNLOCK(sc);
}
