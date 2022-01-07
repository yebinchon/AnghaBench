
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ic_oerrors; } ;
struct wi_softc {scalar_t__ sc_tx_timer; int sc_watchdog; TYPE_1__ sc_ic; int sc_dev; int sc_enabled; } ;


 int WI_LOCK_ASSERT (struct wi_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct wi_softc*) ;
 int counter_u64_add (int ,int) ;
 int device_printf (int ,char*) ;
 int hz ;
 int wi_init (struct wi_softc*) ;

__attribute__((used)) static void
wi_watchdog(void *arg)
{
 struct wi_softc *sc = arg;

 WI_LOCK_ASSERT(sc);

 if (!sc->sc_enabled)
  return;

 if (sc->sc_tx_timer && --sc->sc_tx_timer == 0) {
  device_printf(sc->sc_dev, "device timeout\n");
  counter_u64_add(sc->sc_ic.ic_oerrors, 1);
  wi_init(sc);
  return;
 }
 callout_reset(&sc->sc_watchdog, hz, wi_watchdog, sc);
}
