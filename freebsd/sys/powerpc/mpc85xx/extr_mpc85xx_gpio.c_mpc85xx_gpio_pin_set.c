
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct mpc85xx_gpio_softc {int out_res; } ;
typedef int device_t ;


 int EINVAL ;
 int GPIO_LOCK (struct mpc85xx_gpio_softc*) ;
 int GPIO_UNLOCK (struct mpc85xx_gpio_softc*) ;
 int VALID_PIN (int) ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 struct mpc85xx_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
mpc85xx_gpio_pin_set(device_t dev, uint32_t pin, unsigned int value)
{
 struct mpc85xx_gpio_softc *sc = device_get_softc(dev);
 uint32_t outvals;
 uint8_t pinbit;

 if (!VALID_PIN(pin) || value > 1)
  return (EINVAL);

 GPIO_LOCK(sc);
 pinbit = 31 - pin;

 outvals = bus_read_4(sc->out_res, 0);
 outvals &= ~(1 << pinbit);
 outvals |= (value << pinbit);
 bus_write_4(sc->out_res, 0, outvals);

 GPIO_UNLOCK(sc);

 return (0);
}
