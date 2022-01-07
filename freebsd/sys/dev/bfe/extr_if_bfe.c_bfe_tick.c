
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct bfe_softc {int bfe_stat_co; int bfe_miibus; } ;


 int BFE_LOCK_ASSERT (struct bfe_softc*) ;
 int bfe_stats_update (struct bfe_softc*) ;
 int bfe_watchdog (struct bfe_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct bfe_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_tick (struct mii_data*) ;

__attribute__((used)) static void
bfe_tick(void *xsc)
{
 struct bfe_softc *sc = xsc;
 struct mii_data *mii;

 BFE_LOCK_ASSERT(sc);

 mii = device_get_softc(sc->bfe_miibus);
 mii_tick(mii);
 bfe_stats_update(sc);
 bfe_watchdog(sc);
 callout_reset(&sc->bfe_stat_co, hz, bfe_tick, sc);
}
