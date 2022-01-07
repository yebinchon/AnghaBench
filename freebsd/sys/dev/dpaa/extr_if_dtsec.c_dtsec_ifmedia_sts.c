
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {struct dtsec_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct dtsec_softc {TYPE_1__* sc_mii; } ;
struct TYPE_2__ {int mii_media_status; int mii_media_active; } ;


 int DTSEC_LOCK (struct dtsec_softc*) ;
 int DTSEC_UNLOCK (struct dtsec_softc*) ;
 int mii_pollstat (TYPE_1__*) ;

__attribute__((used)) static void
dtsec_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct dtsec_softc *sc = ifp->if_softc;

 DTSEC_LOCK(sc);

 mii_pollstat(sc->sc_mii);

 ifmr->ifm_active = sc->sc_mii->mii_media_active;
 ifmr->ifm_status = sc->sc_mii->mii_media_status;

 DTSEC_UNLOCK(sc);
}
