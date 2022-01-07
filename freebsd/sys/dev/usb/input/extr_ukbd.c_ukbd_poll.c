
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ukbd_softc {scalar_t__ sc_polling; scalar_t__ sc_delay; int sc_flags; int sc_poll_thread; } ;
struct TYPE_3__ {struct ukbd_softc* kb_data; } ;
typedef TYPE_1__ keyboard_t ;


 int UKBD_FLAG_POLLING ;
 int UKBD_LOCK () ;
 int UKBD_UNLOCK () ;
 int curthread ;

__attribute__((used)) static int
ukbd_poll(keyboard_t *kbd, int on)
{
 struct ukbd_softc *sc = kbd->kb_data;

 UKBD_LOCK();




 if (on)
  sc->sc_polling++;
 else if (sc->sc_polling > 0)
  sc->sc_polling--;

 if (sc->sc_polling != 0) {
  sc->sc_flags |= UKBD_FLAG_POLLING;
  sc->sc_poll_thread = curthread;
 } else {
  sc->sc_flags &= ~UKBD_FLAG_POLLING;
  sc->sc_delay = 0;
 }
 UKBD_UNLOCK();

 return (0);
}
