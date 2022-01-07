
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ar5315_gpio_softc {int dummy; } ;
typedef int device_t ;


 int GPIO_READ (struct ar5315_gpio_softc*,int ) ;
 int GPIO_WRITE (struct ar5315_gpio_softc*,int ,int) ;
 int ar531x_gpio_do () ;
 struct ar5315_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ar5315_gpio_pin_set(device_t dev, uint32_t pin, unsigned int value)
{
 struct ar5315_gpio_softc *sc = device_get_softc(dev);
 uint32_t state;

 state = GPIO_READ(sc, ar531x_gpio_do());

 if(value == 1) {
  state |= (1 << pin);
 } else {
  state &= ~(1 << pin);
 }

 GPIO_WRITE(sc, ar531x_gpio_do(), state);

 return (0);
}
