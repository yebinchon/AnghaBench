
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct gpiobus_softc {int sc_dev; } ;
struct gpiobus_ivar {size_t npins; int * pins; } ;
typedef int device_t ;


 int EINVAL ;
 struct gpiobus_ivar* GPIOBUS_IVAR (int ) ;
 struct gpiobus_softc* GPIOBUS_SOFTC (int ) ;
 int GPIO_PIN_SET (int ,int ,unsigned int) ;

__attribute__((used)) static int
gpiobus_pin_set(device_t dev, device_t child, uint32_t pin,
    unsigned int value)
{
 struct gpiobus_softc *sc = GPIOBUS_SOFTC(dev);
 struct gpiobus_ivar *devi = GPIOBUS_IVAR(child);

 if (pin >= devi->npins)
  return (EINVAL);

 return GPIO_PIN_SET(sc->sc_dev, devi->pins[pin], value);
}
