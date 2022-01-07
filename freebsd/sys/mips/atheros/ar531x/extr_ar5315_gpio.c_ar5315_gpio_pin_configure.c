
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gpio_pin {int gp_pin; unsigned int gp_flags; } ;
struct ar5315_gpio_softc {int dummy; } ;


 int GPIO_CLEAR_BITS (struct ar5315_gpio_softc*,int ,int) ;
 unsigned int GPIO_PIN_INPUT ;
 unsigned int GPIO_PIN_OUTPUT ;
 int GPIO_SET_BITS (struct ar5315_gpio_softc*,int ,int) ;
 int ar531x_gpio_cr () ;

__attribute__((used)) static void
ar5315_gpio_pin_configure(struct ar5315_gpio_softc *sc, struct gpio_pin *pin,
    unsigned int flags)
{
 uint32_t mask;

 mask = 1 << pin->gp_pin;




 if (flags & (GPIO_PIN_INPUT|GPIO_PIN_OUTPUT)) {
  pin->gp_flags &= ~(GPIO_PIN_INPUT|GPIO_PIN_OUTPUT);
  if (flags & GPIO_PIN_OUTPUT) {
   pin->gp_flags |= GPIO_PIN_OUTPUT;
   GPIO_SET_BITS(sc, ar531x_gpio_cr(), mask);
  }
  else {
   pin->gp_flags |= GPIO_PIN_INPUT;
   GPIO_CLEAR_BITS(sc, ar531x_gpio_cr(), mask);
  }
 }
}
