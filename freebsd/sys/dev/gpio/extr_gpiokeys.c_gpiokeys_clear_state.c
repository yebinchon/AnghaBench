
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gpiokeys_softc {scalar_t__ sc_accents; int sc_state; int sc_flags; } ;
struct TYPE_3__ {struct gpiokeys_softc* kb_data; } ;
typedef TYPE_1__ keyboard_t ;


 int GPIOKEYS_GLOBAL_FLAG_POLLING ;
 int LOCK_MASK ;

__attribute__((used)) static void
gpiokeys_clear_state(keyboard_t *kbd)
{
 struct gpiokeys_softc *sc = kbd->kb_data;

 sc->sc_flags &= ~(GPIOKEYS_GLOBAL_FLAG_POLLING);
 sc->sc_state &= LOCK_MASK;
 sc->sc_accents = 0;
}
