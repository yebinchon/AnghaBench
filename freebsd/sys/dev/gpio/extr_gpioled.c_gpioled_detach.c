
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpioled_softc {int * sc_leddev; } ;
typedef int device_t ;


 int GPIOLED_LOCK_DESTROY (struct gpioled_softc*) ;
 struct gpioled_softc* device_get_softc (int ) ;
 int led_destroy (int *) ;

__attribute__((used)) static int
gpioled_detach(device_t dev)
{
 struct gpioled_softc *sc;

 sc = device_get_softc(dev);
 if (sc->sc_leddev) {
  led_destroy(sc->sc_leddev);
  sc->sc_leddev = ((void*)0);
 }
 GPIOLED_LOCK_DESTROY(sc);
 return (0);
}
