
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bytgpio_softc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;
 scalar_t__ bytgpio_pad_is_gpio (struct bytgpio_softc*,int) ;
 scalar_t__ bytgpio_valid_pin (struct bytgpio_softc*,int) ;
 struct bytgpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bytgpio_pin_getcaps(device_t dev, uint32_t pin, uint32_t *caps)
{
 struct bytgpio_softc *sc;

 sc = device_get_softc(dev);
 if (bytgpio_valid_pin(sc, pin) != 0)
  return (EINVAL);

 *caps = 0;
 if (bytgpio_pad_is_gpio(sc, pin))
  *caps = GPIO_PIN_INPUT | GPIO_PIN_OUTPUT;

 return (0);
}
