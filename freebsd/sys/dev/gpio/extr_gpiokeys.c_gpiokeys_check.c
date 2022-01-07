
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct gpiokeys_softc {int sc_flags; scalar_t__ sc_inputs; } ;
struct TYPE_4__ {struct gpiokeys_softc* kb_data; } ;
typedef TYPE_1__ keyboard_t ;


 int GPIOKEYS_ASSERT_LOCKED (struct gpiokeys_softc*) ;
 int GPIOKEYS_GLOBAL_FLAG_POLLING ;
 int KBD_IS_ACTIVE (TYPE_1__*) ;
 int gpiokeys_do_poll (struct gpiokeys_softc*,int ) ;

__attribute__((used)) static int
gpiokeys_check(keyboard_t *kbd)
{
 struct gpiokeys_softc *sc = kbd->kb_data;

 GPIOKEYS_ASSERT_LOCKED(sc);

 if (!KBD_IS_ACTIVE(kbd))
  return (0);

 if (sc->sc_flags & GPIOKEYS_GLOBAL_FLAG_POLLING)
  gpiokeys_do_poll(sc, 0);

 if (sc->sc_inputs > 0) {
  return (1);
 }
 return (0);
}
