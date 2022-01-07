
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiokeys_softc {int sc_total_keys; int * sc_keys; } ;
typedef int keyboard_t ;
typedef int device_t ;


 int GPIOKEYS_LOCK_DESTROY (struct gpiokeys_softc*) ;
 int KBD_DRIVER_NAME ;
 int M_DEVBUF ;
 struct gpiokeys_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int free (int *,int ) ;
 int gpiokeys_detach_key (struct gpiokeys_softc*,int *) ;
 int kbd_detach (int *) ;
 int kbd_find_keyboard (int ,int ) ;
 int * kbd_get_keyboard (int ) ;
 int kbd_unregister (int *) ;

__attribute__((used)) static int
gpiokeys_detach(device_t dev)
{
 struct gpiokeys_softc *sc;
 keyboard_t *kbd;
 int i;

 sc = device_get_softc(dev);

 for (i = 0; i < sc->sc_total_keys; i++)
  gpiokeys_detach_key(sc, &sc->sc_keys[i]);

 kbd = kbd_get_keyboard(kbd_find_keyboard(KBD_DRIVER_NAME,
     device_get_unit(dev)));




 kbd_unregister(kbd);

 GPIOKEYS_LOCK_DESTROY(sc);
 if (sc->sc_keys)
  free(sc->sc_keys, M_DEVBUF);

 return (0);
}
