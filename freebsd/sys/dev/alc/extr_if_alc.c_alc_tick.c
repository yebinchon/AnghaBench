
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct alc_softc {int alc_tick_ch; int alc_miibus; } ;


 int ALC_LOCK_ASSERT (struct alc_softc*) ;
 int alc_stats_update (struct alc_softc*) ;
 int alc_txeof (struct alc_softc*) ;
 int alc_watchdog (struct alc_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct alc_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_tick (struct mii_data*) ;

__attribute__((used)) static void
alc_tick(void *arg)
{
 struct alc_softc *sc;
 struct mii_data *mii;

 sc = (struct alc_softc *)arg;

 ALC_LOCK_ASSERT(sc);

 mii = device_get_softc(sc->alc_miibus);
 mii_tick(mii);
 alc_stats_update(sc);







 alc_txeof(sc);
 alc_watchdog(sc);
 callout_reset(&sc->alc_tick_ch, hz, alc_tick, sc);
}
