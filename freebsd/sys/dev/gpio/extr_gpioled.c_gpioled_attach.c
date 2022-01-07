
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpioled_softc {int sc_invert; int sc_leddev; int sc_busdev; int sc_dev; } ;
typedef int device_t ;


 int GPIOLED_LOCK_INIT (struct gpioled_softc*) ;
 int device_get_name (int ) ;
 char const* device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 struct gpioled_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int gpioled_control ;
 int led_create_state (int ,struct gpioled_softc*,char const*,int) ;
 int resource_int_value (int ,int ,char*,int*) ;
 scalar_t__ resource_string_value (int ,int ,char*,char const**) ;

__attribute__((used)) static int
gpioled_attach(device_t dev)
{
 struct gpioled_softc *sc;
 int state;
 const char *name;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_busdev = device_get_parent(dev);
 GPIOLED_LOCK_INIT(sc);

 state = 0;

 if (resource_string_value(device_get_name(dev),
     device_get_unit(dev), "name", &name))
  name = ((void*)0);
 resource_int_value(device_get_name(dev),
     device_get_unit(dev), "invert", &sc->sc_invert);
 resource_int_value(device_get_name(dev),
     device_get_unit(dev), "state", &state);

 sc->sc_leddev = led_create_state(gpioled_control, sc, name ? name :
     device_get_nameunit(dev), state);

 return (0);
}
