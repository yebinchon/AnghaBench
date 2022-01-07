
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ic_oerrors; } ;
struct rt2860_softc {int sc_flags; scalar_t__ sc_tx_timer; int watchdog_ch; TYPE_1__ sc_ic; int sc_dev; scalar_t__ sc_invalid; } ;


 int KASSERT (int,char*) ;
 int RAL_LOCK_ASSERT (struct rt2860_softc*) ;
 int RT2860_RUNNING ;
 int callout_reset (int *,int ,void (*) (void*),struct rt2860_softc*) ;
 int counter_u64_add (int ,int) ;
 int device_printf (int ,char*) ;
 int hz ;
 int rt2860_init_locked (struct rt2860_softc*) ;
 int rt2860_stop_locked (struct rt2860_softc*) ;

__attribute__((used)) static void
rt2860_watchdog(void *arg)
{
 struct rt2860_softc *sc = arg;

 RAL_LOCK_ASSERT(sc);

 KASSERT(sc->sc_flags & RT2860_RUNNING, ("not running"));

 if (sc->sc_invalid)
  return;

 if (sc->sc_tx_timer > 0 && --sc->sc_tx_timer == 0) {
  device_printf(sc->sc_dev, "device timeout\n");
  rt2860_stop_locked(sc);
  rt2860_init_locked(sc);
  counter_u64_add(sc->sc_ic.ic_oerrors, 1);
  return;
 }
 callout_reset(&sc->watchdog_ch, hz, rt2860_watchdog, sc);
}
