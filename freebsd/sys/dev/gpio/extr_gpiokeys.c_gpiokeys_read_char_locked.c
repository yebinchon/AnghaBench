
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct gpiokeys_softc {scalar_t__ sc_mode; int sc_accents; int sc_state; } ;
struct TYPE_5__ {int kb_count; struct gpiokeys_softc* kb_data; } ;
typedef TYPE_1__ keyboard_t ;


 int FALSE ;
 int KBD_IS_ACTIVE (TYPE_1__*) ;
 scalar_t__ K_CODE ;
 scalar_t__ K_RAW ;
 scalar_t__ NOKEY ;
 int SCAN_CHAR (scalar_t__) ;
 scalar_t__ SCAN_RELEASE ;
 scalar_t__ genkbd_keyaction (TYPE_1__*,int ,scalar_t__,int *,int *) ;
 scalar_t__ gpiokeys_get_key (struct gpiokeys_softc*,int) ;

__attribute__((used)) static uint32_t
gpiokeys_read_char_locked(keyboard_t *kbd, int wait)
{
 struct gpiokeys_softc *sc = kbd->kb_data;
 uint32_t action;
 uint32_t keycode;

 if (!KBD_IS_ACTIVE(kbd))
  return (NOKEY);

next_code:



 keycode = gpiokeys_get_key(sc, (wait == FALSE) ? 0 : 1);
 ++kbd->kb_count;


 if (sc->sc_mode == K_RAW) {
  return (keycode);
 }




 if (sc->sc_mode == K_CODE) {
  return (keycode);
 }


 action = genkbd_keyaction(kbd, SCAN_CHAR(keycode),
     (keycode & SCAN_RELEASE),
     &sc->sc_state, &sc->sc_accents);
 if (action == NOKEY) {
  goto next_code;
 }

 return (action);
}
