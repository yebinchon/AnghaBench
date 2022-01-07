
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ic_oerrors; } ;
struct rt2560_softc {int sc_flags; scalar_t__ sc_tx_timer; int watchdog_ch; TYPE_1__ sc_ic; int sc_dev; scalar_t__ sc_invalid; } ;


 int KASSERT (int,char*) ;
 int RAL_LOCK_ASSERT (struct rt2560_softc*) ;
 int RT2560_F_RUNNING ;
 int callout_reset (int *,int ,void (*) (void*),struct rt2560_softc*) ;
 int counter_u64_add (int ,int) ;
 int device_printf (int ,char*) ;
 int hz ;
 int rt2560_encryption_intr (struct rt2560_softc*) ;
 int rt2560_init_locked (struct rt2560_softc*) ;
 int rt2560_tx_intr (struct rt2560_softc*) ;

__attribute__((used)) static void
rt2560_watchdog(void *arg)
{
 struct rt2560_softc *sc = arg;

 RAL_LOCK_ASSERT(sc);

 KASSERT(sc->sc_flags & RT2560_F_RUNNING, ("not running"));

 if (sc->sc_invalid)
  return;

 rt2560_encryption_intr(sc);
 rt2560_tx_intr(sc);

 if (sc->sc_tx_timer > 0 && --sc->sc_tx_timer == 0) {
  device_printf(sc->sc_dev, "device timeout\n");
  rt2560_init_locked(sc);
  counter_u64_add(sc->sc_ic.ic_oerrors, 1);

  return;
 }
 callout_reset(&sc->watchdog_ch, hz, rt2560_watchdog, sc);
}
