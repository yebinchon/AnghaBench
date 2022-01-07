
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rl_softc {int rl_flags; scalar_t__ rl_twister; int rl_stat_callout; scalar_t__ rl_twister_enable; int rl_dev; int rl_miibus; } ;
struct mii_data {int dummy; } ;


 scalar_t__ DONE ;
 int RL_FLAG_LINK ;
 int RL_LOCK_ASSERT (struct rl_softc*) ;
 int callout_reset (int *,int,void (*) (void*),struct rl_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_tick (struct mii_data*) ;
 int rl_miibus_statchg (int ) ;
 int rl_twister_update (struct rl_softc*) ;
 int rl_watchdog (struct rl_softc*) ;

__attribute__((used)) static void
rl_tick(void *xsc)
{
 struct rl_softc *sc = xsc;
 struct mii_data *mii;
 int ticks;

 RL_LOCK_ASSERT(sc);
 mii = device_get_softc(sc->rl_miibus);
 mii_tick(mii);
 if ((sc->rl_flags & RL_FLAG_LINK) == 0)
  rl_miibus_statchg(sc->rl_dev);
 if (sc->rl_twister_enable) {
  if (sc->rl_twister == DONE)
   rl_watchdog(sc);
  else
   rl_twister_update(sc);
  if (sc->rl_twister == DONE)
   ticks = hz;
  else
   ticks = hz / 10;
 } else {
  rl_watchdog(sc);
  ticks = hz;
 }

 callout_reset(&sc->rl_stat_callout, ticks, rl_tick, sc);
}
