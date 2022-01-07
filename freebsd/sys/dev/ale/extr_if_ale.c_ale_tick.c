
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct ale_softc {int ale_tick_ch; int ale_miibus; } ;


 int ALE_LOCK_ASSERT (struct ale_softc*) ;
 int ale_stats_update (struct ale_softc*) ;
 int ale_txeof (struct ale_softc*) ;
 int ale_watchdog (struct ale_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct ale_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_tick (struct mii_data*) ;

__attribute__((used)) static void
ale_tick(void *arg)
{
 struct ale_softc *sc;
 struct mii_data *mii;

 sc = (struct ale_softc *)arg;

 ALE_LOCK_ASSERT(sc);

 mii = device_get_softc(sc->ale_miibus);
 mii_tick(mii);
 ale_stats_update(sc);





 ale_txeof(sc);
 ale_watchdog(sc);
 callout_reset(&sc->ale_tick_ch, hz, ale_tick, sc);
}
