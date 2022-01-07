
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ stge_tx_cnt; } ;
struct stge_softc {int sc_tick_ch; TYPE_1__ sc_cdata; int sc_miibus; } ;
struct mii_data {int dummy; } ;


 int STGE_LOCK_ASSERT (struct stge_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct stge_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_tick (struct mii_data*) ;
 int stge_stats_update (struct stge_softc*) ;
 int stge_txeof (struct stge_softc*) ;
 int stge_watchdog (struct stge_softc*) ;

__attribute__((used)) static void
stge_tick(void *arg)
{
 struct stge_softc *sc;
 struct mii_data *mii;

 sc = (struct stge_softc *)arg;

 STGE_LOCK_ASSERT(sc);

 mii = device_get_softc(sc->sc_miibus);
 mii_tick(mii);


 stge_stats_update(sc);







 if (sc->sc_cdata.stge_tx_cnt != 0)
  stge_txeof(sc);

 stge_watchdog(sc);

 callout_reset(&sc->sc_tick_ch, hz, stge_tick, sc);
}
