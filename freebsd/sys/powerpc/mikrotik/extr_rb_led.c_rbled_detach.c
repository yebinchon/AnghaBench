
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbled_softc {int sc_led; } ;
typedef int device_t ;


 struct rbled_softc* device_get_softc (int ) ;
 int led_destroy (int ) ;

__attribute__((used)) static int
rbled_detach(device_t dev)
{
 struct rbled_softc *sc;

 sc = device_get_softc(dev);
 led_destroy(sc->sc_led);

 return (0);
}
