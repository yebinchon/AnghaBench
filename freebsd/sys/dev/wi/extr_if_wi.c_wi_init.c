
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ic_macaddr; } ;
struct wi_softc {int sc_enabled; int sc_watchdog; int sc_flags; int sc_dev; TYPE_1__ sc_ic; int sc_porttype; } ;


 int WI_FLAGS_RUNNING ;
 int WI_LOCK_ASSERT (struct wi_softc*) ;
 int callout_reset (int *,int ,int ,struct wi_softc*) ;
 int device_printf (int ,char*) ;
 int hz ;
 int wi_enable (struct wi_softc*) ;
 scalar_t__ wi_setup_locked (struct wi_softc*,int ,int,int ) ;
 int wi_stop (struct wi_softc*,int) ;
 int wi_watchdog ;

void
wi_init(struct wi_softc *sc)
{
 int wasenabled;

 WI_LOCK_ASSERT(sc);

 wasenabled = sc->sc_enabled;
 if (wasenabled)
  wi_stop(sc, 1);

 if (wi_setup_locked(sc, sc->sc_porttype, 3,
     sc->sc_ic.ic_macaddr) != 0) {
  device_printf(sc->sc_dev, "interface not running\n");
  wi_stop(sc, 1);
  return;
 }

 sc->sc_flags |= WI_FLAGS_RUNNING;

 callout_reset(&sc->sc_watchdog, hz, wi_watchdog, sc);

 wi_enable(sc);
}
