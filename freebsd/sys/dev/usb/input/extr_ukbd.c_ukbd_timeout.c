
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ukbd_softc {scalar_t__ sc_inputs; scalar_t__ sc_delay; int sc_time_ms; } ;


 int UKBD_LOCK_ASSERT () ;
 scalar_t__ ukbd_any_key_pressed (struct ukbd_softc*) ;
 int ukbd_event_keyinput (struct ukbd_softc*) ;
 int ukbd_interrupt (struct ukbd_softc*) ;
 int ukbd_start_timer (struct ukbd_softc*) ;

__attribute__((used)) static void
ukbd_timeout(void *arg)
{
 struct ukbd_softc *sc = arg;

 UKBD_LOCK_ASSERT();

 sc->sc_time_ms += sc->sc_delay;
 sc->sc_delay = 0;

 ukbd_interrupt(sc);


 ukbd_event_keyinput(sc);

 if (ukbd_any_key_pressed(sc) || (sc->sc_inputs != 0)) {
  ukbd_start_timer(sc);
 }
}
