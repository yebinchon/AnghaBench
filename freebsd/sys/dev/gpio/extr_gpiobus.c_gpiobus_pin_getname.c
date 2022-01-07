
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct gpiobus_softc {size_t sc_npins; TYPE_1__* sc_pins; } ;
typedef int device_t ;
struct TYPE_2__ {int * name; } ;


 int EINVAL ;
 struct gpiobus_softc* GPIOBUS_SOFTC (int ) ;
 int GPIOMAXNAME ;
 int GPIO_PIN_GETNAME (int ,size_t,char*) ;
 int device_get_parent (int ) ;
 int memcpy (char*,int *,int ) ;

__attribute__((used)) static int
gpiobus_pin_getname(device_t dev, uint32_t pin, char *name)
{
 struct gpiobus_softc *sc;

 sc = GPIOBUS_SOFTC(dev);
 if (pin > sc->sc_npins)
  return (EINVAL);

 if (sc->sc_pins[pin].name != ((void*)0)) {
  memcpy(name, sc->sc_pins[pin].name, GPIOMAXNAME);
  return (0);
 }


 return (GPIO_PIN_GETNAME(device_get_parent(dev), pin, name));
}
