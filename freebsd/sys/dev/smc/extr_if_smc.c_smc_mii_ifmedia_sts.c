
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_softc {int * smc_miibus; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct smc_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;


 struct mii_data* device_get_softc (int *) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
smc_mii_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct smc_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 if (sc->smc_miibus == ((void*)0))
  return;

 mii = device_get_softc(sc->smc_miibus);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
}
