
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mst_watchdog; } ;
struct TYPE_3__ {int ic_oerrors; } ;
struct malo_softc {scalar_t__ malo_timer; TYPE_2__ malo_stats; TYPE_1__ malo_ic; int malo_dev; int malo_invalid; scalar_t__ malo_running; int malo_watchdog_timer; } ;


 int callout_reset (int *,int ,void (*) (void*),struct malo_softc*) ;
 int counter_u64_add (int ,int) ;
 int device_printf (int ,char*) ;
 int hz ;

__attribute__((used)) static void
malo_watchdog(void *arg)
{
 struct malo_softc *sc = arg;

 callout_reset(&sc->malo_watchdog_timer, hz, malo_watchdog, sc);
 if (sc->malo_timer == 0 || --sc->malo_timer > 0)
  return;

 if (sc->malo_running && !sc->malo_invalid) {
  device_printf(sc->malo_dev, "watchdog timeout\n");



  counter_u64_add(sc->malo_ic.ic_oerrors, 1);
  sc->malo_stats.mst_watchdog++;
 }
}
