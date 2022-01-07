
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_kbd_softc {int sc_mutex; scalar_t__* at_buffered_char; int sc_repeater; scalar_t__ buffers; } ;
typedef int keyboard_t ;


 int callout_stop (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void akbd_clear_state(keyboard_t *kbd)
{
 struct adb_kbd_softc *sc;

 sc = (struct adb_kbd_softc *)(kbd);

 mtx_lock(&sc->sc_mutex);

 sc->buffers = 0;
 callout_stop(&sc->sc_repeater);





 mtx_unlock(&sc->sc_mutex);
}
