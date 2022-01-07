
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stge_softc {int sc_miibus; } ;
struct mii_data {int mii_media_active; int mii_media_status; } ;
struct ifnet {struct stge_softc* if_softc; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;


 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
stge_mediastatus(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct stge_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 mii = device_get_softc(sc->sc_miibus);

 mii_pollstat(mii);
 ifmr->ifm_status = mii->mii_media_status;
 ifmr->ifm_active = mii->mii_media_active;
}
