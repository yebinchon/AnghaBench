
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ic_oerrors; } ;
struct bwn_softc {scalar_t__ sc_watchdog_timer; int sc_watchdog_ch; TYPE_1__ sc_ic; int sc_dev; } ;


 int callout_schedule (int *,int ) ;
 int counter_u64_add (int ,int) ;
 int device_printf (int ,char*) ;
 int hz ;

__attribute__((used)) static void
bwn_watchdog(void *arg)
{
 struct bwn_softc *sc = arg;

 if (sc->sc_watchdog_timer != 0 && --sc->sc_watchdog_timer == 0) {
  device_printf(sc->sc_dev, "device timeout\n");
  counter_u64_add(sc->sc_ic.ic_oerrors, 1);
 }
 callout_schedule(&sc->sc_watchdog_ch, hz);
}
