
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunkbd_softc {int sc_repeat_key; scalar_t__* sc_buffered_char; int sc_state; scalar_t__ sc_repeating; scalar_t__ sc_polling; scalar_t__ sc_flags; scalar_t__ sc_composed_char; scalar_t__ sc_accents; } ;
typedef int keyboard_t ;


 int LOCK_MASK ;

__attribute__((used)) static void
sunkbd_clear_state(keyboard_t *kbd)
{
 struct sunkbd_softc *sc;

 sc = (struct sunkbd_softc *)kbd;
 sc->sc_repeat_key = -1;
 sc->sc_accents = 0;
 sc->sc_composed_char = 0;
 sc->sc_flags = 0;
 sc->sc_polling = 0;
 sc->sc_repeating = 0;
 sc->sc_state &= LOCK_MASK;





}
