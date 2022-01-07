
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rl_softc {int rl_miibus; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct rl_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;


 int RL_LOCK (struct rl_softc*) ;
 int RL_UNLOCK (struct rl_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
re_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 struct rl_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 mii = device_get_softc(sc->rl_miibus);

 RL_LOCK(sc);
 mii_pollstat(mii);
 ifmr->ifm_active = mii->mii_media_active;
 ifmr->ifm_status = mii->mii_media_status;
 RL_UNLOCK(sc);
}
