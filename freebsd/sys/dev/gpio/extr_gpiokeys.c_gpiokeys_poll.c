
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gpiokeys_softc {int sc_flags; } ;
struct TYPE_3__ {struct gpiokeys_softc* kb_data; } ;
typedef TYPE_1__ keyboard_t ;


 int GPIOKEYS_GLOBAL_FLAG_POLLING ;
 int GPIOKEYS_LOCK (struct gpiokeys_softc*) ;
 int GPIOKEYS_UNLOCK (struct gpiokeys_softc*) ;

__attribute__((used)) static int
gpiokeys_poll(keyboard_t *kbd, int on)
{
 struct gpiokeys_softc *sc = kbd->kb_data;

 GPIOKEYS_LOCK(sc);
 if (on)
  sc->sc_flags |= GPIOKEYS_GLOBAL_FLAG_POLLING;
 else
  sc->sc_flags &= ~GPIOKEYS_GLOBAL_FLAG_POLLING;
 GPIOKEYS_UNLOCK(sc);

 return (0);
}
