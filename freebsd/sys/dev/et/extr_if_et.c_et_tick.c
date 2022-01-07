
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct ifnet {int dummy; } ;
struct et_softc {int sc_tick; int sc_miibus; struct ifnet* ifp; } ;


 scalar_t__ EJUSTRETURN ;
 int ET_LOCK_ASSERT (struct et_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct et_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int et_stats_update (struct et_softc*) ;
 scalar_t__ et_watchdog (struct et_softc*) ;
 int hz ;
 int mii_tick (struct mii_data*) ;

__attribute__((used)) static void
et_tick(void *xsc)
{
 struct et_softc *sc;
 struct ifnet *ifp;
 struct mii_data *mii;

 sc = xsc;
 ET_LOCK_ASSERT(sc);
 ifp = sc->ifp;
 mii = device_get_softc(sc->sc_miibus);

 mii_tick(mii);
 et_stats_update(sc);
 if (et_watchdog(sc) == EJUSTRETURN)
  return;
 callout_reset(&sc->sc_tick, hz, et_tick, sc);
}
