
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_kbd_softc {int sc_cv; int sc_mutex; int sc_repeater; } ;
typedef int keyboard_t ;
typedef int device_t ;


 int KBD_DRIVER_NAME ;
 int adb_set_autopoll (int ,int ) ;
 int callout_stop (int *) ;
 int cv_destroy (int *) ;
 struct adb_kbd_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int kbd_detach (int *) ;
 int kbd_find_keyboard (int ,int ) ;
 int * kbd_get_keyboard (int ) ;
 int kbdd_disable (int *) ;
 int kbdd_term (int *) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
adb_kbd_detach(device_t dev)
{
 struct adb_kbd_softc *sc;
 keyboard_t *kbd;

 sc = device_get_softc(dev);

 adb_set_autopoll(dev,0);
 callout_stop(&sc->sc_repeater);

 mtx_lock(&sc->sc_mutex);

 kbd = kbd_get_keyboard(kbd_find_keyboard(KBD_DRIVER_NAME,
           device_get_unit(dev)));

 kbdd_disable(kbd);





 kbdd_term(kbd);

 mtx_unlock(&sc->sc_mutex);

 mtx_destroy(&sc->sc_mutex);
 cv_destroy(&sc->sc_cv);

 return (0);
}
