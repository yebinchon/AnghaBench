
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_pin {unsigned int gp_flags; int gp_pin; } ;
struct ar71xx_gpio_softc {int dummy; } ;


 unsigned int GPIO_PIN_INPUT ;
 unsigned int GPIO_PIN_OUTPUT ;
 int ar71xx_gpio_oe_set_input (struct ar71xx_gpio_softc*,int ) ;
 int ar71xx_gpio_oe_set_output (struct ar71xx_gpio_softc*,int ) ;

__attribute__((used)) static void
ar71xx_gpio_pin_configure(struct ar71xx_gpio_softc *sc, struct gpio_pin *pin,
    unsigned int flags)
{




 if (flags & (GPIO_PIN_INPUT|GPIO_PIN_OUTPUT)) {
  pin->gp_flags &= ~(GPIO_PIN_INPUT|GPIO_PIN_OUTPUT);
  if (flags & GPIO_PIN_OUTPUT) {
   pin->gp_flags |= GPIO_PIN_OUTPUT;
   ar71xx_gpio_oe_set_output(sc, pin->gp_pin);
  } else {
   pin->gp_flags |= GPIO_PIN_INPUT;
   ar71xx_gpio_oe_set_input(sc, pin->gp_pin);
  }
 }
}
