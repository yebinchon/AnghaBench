
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ic_oerrors; } ;
struct bwi_softc {scalar_t__ sc_tx_timer; int sc_watchdog_timer; int sc_restart_task; int sc_tq; TYPE_1__ sc_ic; int sc_dev; } ;


 int BWI_ASSERT_LOCKED (struct bwi_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct bwi_softc*) ;
 int counter_u64_add (int ,int) ;
 int device_printf (int ,char*) ;
 int hz ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
bwi_watchdog(void *arg)
{
 struct bwi_softc *sc;

 sc = arg;
 BWI_ASSERT_LOCKED(sc);
 if (sc->sc_tx_timer != 0 && --sc->sc_tx_timer == 0) {
  device_printf(sc->sc_dev, "watchdog timeout\n");
  counter_u64_add(sc->sc_ic.ic_oerrors, 1);
  taskqueue_enqueue(sc->sc_tq, &sc->sc_restart_task);
 }
 callout_reset(&sc->sc_watchdog_timer, hz, bwi_watchdog, sc);
}
