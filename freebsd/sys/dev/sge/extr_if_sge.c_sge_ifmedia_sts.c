
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_softc {int sge_miibus; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_flags; struct sge_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;


 int IFF_UP ;
 int SGE_LOCK (struct sge_softc*) ;
 int SGE_UNLOCK (struct sge_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
sge_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct sge_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 SGE_LOCK(sc);
 mii = device_get_softc(sc->sge_miibus);
 if ((ifp->if_flags & IFF_UP) == 0) {
  SGE_UNLOCK(sc);
  return;
 }
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 SGE_UNLOCK(sc);
}
