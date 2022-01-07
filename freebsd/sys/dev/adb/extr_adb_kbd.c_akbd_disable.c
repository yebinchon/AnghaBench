
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_kbd_softc {int sc_repeater; } ;
typedef int keyboard_t ;


 int KBD_DEACTIVATE (int *) ;
 int callout_stop (int *) ;

__attribute__((used)) static int
akbd_disable(keyboard_t *kbd)
{
 struct adb_kbd_softc *sc;
 sc = (struct adb_kbd_softc *)(kbd);

 callout_stop(&sc->sc_repeater);
 KBD_DEACTIVATE(kbd);
 return (0);
}
