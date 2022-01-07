
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auxio_softc {int sc_led_stat; int sc_led_dev; } ;
typedef int device_t ;


 int auxio_free_resource (struct auxio_softc*) ;
 int auxio_led_func (struct auxio_softc*,int ) ;
 struct auxio_softc* device_get_softc (int ) ;
 int led_destroy (int ) ;

__attribute__((used)) static int
auxio_bus_detach(device_t dev)
{
 struct auxio_softc *sc;

 sc = device_get_softc(dev);
 led_destroy(sc->sc_led_dev);
 auxio_led_func(sc, sc->sc_led_stat);
 auxio_free_resource(sc);

 return (0);
}
