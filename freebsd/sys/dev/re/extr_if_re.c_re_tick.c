
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rl_softc {int rl_flags; int rl_stat_callout; int rl_dev; int rl_miibus; } ;
struct mii_data {int dummy; } ;


 int RL_FLAG_LINK ;
 int RL_LOCK_ASSERT (struct rl_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct rl_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_tick (struct mii_data*) ;
 int re_miibus_statchg (int ) ;
 int re_txeof (struct rl_softc*) ;
 int re_watchdog (struct rl_softc*) ;

__attribute__((used)) static void
re_tick(void *xsc)
{
 struct rl_softc *sc;
 struct mii_data *mii;

 sc = xsc;

 RL_LOCK_ASSERT(sc);

 mii = device_get_softc(sc->rl_miibus);
 mii_tick(mii);
 if ((sc->rl_flags & RL_FLAG_LINK) == 0)
  re_miibus_statchg(sc->rl_dev);






 re_txeof(sc);
 re_watchdog(sc);
 callout_reset(&sc->rl_stat_callout, hz, re_tick, sc);
}
