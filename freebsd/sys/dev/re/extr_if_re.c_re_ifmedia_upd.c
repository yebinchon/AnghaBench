
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rl_softc {int rl_miibus; } ;
struct mii_data {int dummy; } ;
struct ifnet {struct rl_softc* if_softc; } ;


 int RL_LOCK (struct rl_softc*) ;
 int RL_UNLOCK (struct rl_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int mii_mediachg (struct mii_data*) ;

__attribute__((used)) static int
re_ifmedia_upd(struct ifnet *ifp)
{
 struct rl_softc *sc;
 struct mii_data *mii;
 int error;

 sc = ifp->if_softc;
 mii = device_get_softc(sc->rl_miibus);
 RL_LOCK(sc);
 error = mii_mediachg(mii);
 RL_UNLOCK(sc);

 return (error);
}
