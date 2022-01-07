
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct gpiobus_softc {size_t sc_npins; TYPE_1__* sc_pins; } ;
typedef int device_t ;
struct TYPE_2__ {int mapped; } ;


 struct gpiobus_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,size_t,...) ;

int
gpiobus_acquire_pin(device_t bus, uint32_t pin)
{
 struct gpiobus_softc *sc;

 sc = device_get_softc(bus);

 if (pin >= sc->sc_npins) {
  device_printf(bus,
      "invalid pin %d, max: %d\n", pin, sc->sc_npins - 1);
  return (-1);
 }

 if (sc->sc_pins[pin].mapped) {
  device_printf(bus, "warning: pin %d is already mapped\n", pin);
  return (-1);
 }
 sc->sc_pins[pin].mapped = 1;

 return (0);
}
