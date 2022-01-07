
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xl_softc {int xl_tick_callout; int * xl_miibus; } ;
struct mii_data {int dummy; } ;


 scalar_t__ EJUSTRETURN ;
 int XL_LOCK_ASSERT (struct xl_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct xl_softc*) ;
 struct mii_data* device_get_softc (int *) ;
 int hz ;
 int mii_tick (struct mii_data*) ;
 int xl_stats_update (struct xl_softc*) ;
 scalar_t__ xl_watchdog (struct xl_softc*) ;

__attribute__((used)) static void
xl_tick(void *xsc)
{
 struct xl_softc *sc = xsc;
 struct mii_data *mii;

 XL_LOCK_ASSERT(sc);

 if (sc->xl_miibus != ((void*)0)) {
  mii = device_get_softc(sc->xl_miibus);
  mii_tick(mii);
 }

 xl_stats_update(sc);
 if (xl_watchdog(sc) == EJUSTRETURN)
  return;

 callout_reset(&sc->xl_tick_callout, hz, xl_tick, sc);
}
