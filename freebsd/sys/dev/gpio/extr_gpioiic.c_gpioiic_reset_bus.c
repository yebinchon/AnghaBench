
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpioiic_softc {int scl_pin; int sc_dev; int sc_busdev; int sda_pin; } ;
typedef int device_t ;


 int GPIOBUS_PIN_SETFLAGS (int ,int ,int ,int ) ;
 int GPIO_PIN_INPUT ;
 struct gpioiic_softc* device_get_softc (int ) ;

__attribute__((used)) static void
gpioiic_reset_bus(device_t dev)
{
 struct gpioiic_softc *sc = device_get_softc(dev);

 GPIOBUS_PIN_SETFLAGS(sc->sc_busdev, sc->sc_dev, sc->sda_pin,
     GPIO_PIN_INPUT);
 GPIOBUS_PIN_SETFLAGS(sc->sc_busdev, sc->sc_dev, sc->scl_pin,
     GPIO_PIN_INPUT);
}
