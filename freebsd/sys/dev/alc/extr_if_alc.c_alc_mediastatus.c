
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_active; int mii_media_status; } ;
struct ifnet {int if_flags; struct alc_softc* if_softc; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;
struct alc_softc {int alc_miibus; } ;


 int ALC_LOCK (struct alc_softc*) ;
 int ALC_UNLOCK (struct alc_softc*) ;
 int IFF_UP ;
 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
alc_mediastatus(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct alc_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 ALC_LOCK(sc);
 if ((ifp->if_flags & IFF_UP) == 0) {
  ALC_UNLOCK(sc);
  return;
 }
 mii = device_get_softc(sc->alc_miibus);

 mii_pollstat(mii);
 ifmr->ifm_status = mii->mii_media_status;
 ifmr->ifm_active = mii->mii_media_active;
 ALC_UNLOCK(sc);
}
