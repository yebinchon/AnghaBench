
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct epic_softc {int sc_res; int sc_led_dev_power; int sc_led_dev_alert; } ;
typedef int device_t ;


 int EPIC_LOCK_DESTROY (struct epic_softc*) ;
 int bus_release_resources (int ,int ,int ) ;
 struct epic_softc* device_get_softc (int ) ;
 int epic_res_spec ;
 int led_destroy (int ) ;

__attribute__((used)) static int
epic_detach(device_t dev)
{
 struct epic_softc *sc;

 sc = device_get_softc(dev);

 led_destroy(sc->sc_led_dev_alert);
 led_destroy(sc->sc_led_dev_power);

 bus_release_resources(dev, epic_res_spec, sc->sc_res);

 EPIC_LOCK_DESTROY(sc);

 return (0);
}
