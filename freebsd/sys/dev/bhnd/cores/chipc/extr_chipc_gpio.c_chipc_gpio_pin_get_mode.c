
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct chipc_gpio_softc {int dummy; } ;
typedef int chipc_gpio_pin_mode ;


 int CC_GPIO_ASSERT_VALID_PIN (struct chipc_gpio_softc*,int ) ;
 int CC_GPIO_LOCK_ASSERT (struct chipc_gpio_softc*,int ) ;
 int CC_GPIO_PIN_INPUT ;
 int CC_GPIO_PIN_OUTPUT ;
 int CC_GPIO_PIN_TRISTATE ;
 scalar_t__ CC_GPIO_RDFLAG (struct chipc_gpio_softc*,int ,int ) ;
 int GPIOCTRL ;
 int GPIOOUTEN ;
 int MA_OWNED ;

__attribute__((used)) static chipc_gpio_pin_mode
chipc_gpio_pin_get_mode(struct chipc_gpio_softc *sc, uint32_t pin_num)
{
 CC_GPIO_LOCK_ASSERT(sc, MA_OWNED);
 CC_GPIO_ASSERT_VALID_PIN(sc, pin_num);

 if (CC_GPIO_RDFLAG(sc, pin_num, GPIOCTRL)) {
  return (CC_GPIO_PIN_TRISTATE);
 } else if (CC_GPIO_RDFLAG(sc, pin_num, GPIOOUTEN)) {
  return (CC_GPIO_PIN_OUTPUT);
 } else {
  return (CC_GPIO_PIN_INPUT);
 }
}
