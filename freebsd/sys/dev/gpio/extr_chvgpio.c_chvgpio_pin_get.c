
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct chvgpio_softc {int dummy; } ;
typedef int device_t ;


 int CHVGPIO_LOCK (struct chvgpio_softc*) ;
 int CHVGPIO_PAD_CFG0_GPIORXSTATE ;
 int CHVGPIO_UNLOCK (struct chvgpio_softc*) ;
 int EINVAL ;
 unsigned int GPIO_PIN_HIGH ;
 unsigned int GPIO_PIN_LOW ;
 int chvgpio_read_pad_cfg0 (struct chvgpio_softc*,int) ;
 scalar_t__ chvgpio_valid_pin (struct chvgpio_softc*,int) ;
 struct chvgpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
chvgpio_pin_get(device_t dev, uint32_t pin, unsigned int *value)
{
 struct chvgpio_softc *sc;
 uint32_t val;

 sc = device_get_softc(dev);
 if (chvgpio_valid_pin(sc, pin) != 0)
  return (EINVAL);

 CHVGPIO_LOCK(sc);


 val = chvgpio_read_pad_cfg0(sc, pin);
 if (val & CHVGPIO_PAD_CFG0_GPIORXSTATE)
  *value = GPIO_PIN_HIGH;
 else
  *value = GPIO_PIN_LOW;

 CHVGPIO_UNLOCK(sc);

 return (0);
}
