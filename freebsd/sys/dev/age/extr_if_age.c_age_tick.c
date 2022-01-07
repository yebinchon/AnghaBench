
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct age_softc {int age_tick_ch; int age_miibus; } ;


 int AGE_LOCK_ASSERT (struct age_softc*) ;
 int age_watchdog (struct age_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct age_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_tick (struct mii_data*) ;

__attribute__((used)) static void
age_tick(void *arg)
{
 struct age_softc *sc;
 struct mii_data *mii;

 sc = (struct age_softc *)arg;

 AGE_LOCK_ASSERT(sc);

 mii = device_get_softc(sc->age_miibus);
 mii_tick(mii);
 age_watchdog(sc);
 callout_reset(&sc->age_tick_ch, hz, age_tick, sc);
}
