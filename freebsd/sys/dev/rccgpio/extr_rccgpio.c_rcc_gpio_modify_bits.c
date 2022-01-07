
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rcc_gpio_softc {int dummy; } ;


 int RCC_GPIO_LOCK (struct rcc_gpio_softc*) ;
 int RCC_GPIO_UNLOCK (struct rcc_gpio_softc*) ;
 int RCC_READ (struct rcc_gpio_softc*,int ) ;
 int RCC_WRITE (struct rcc_gpio_softc*,int ,int ) ;

__attribute__((used)) static void
rcc_gpio_modify_bits(struct rcc_gpio_softc *sc, uint32_t reg, uint32_t mask,
 uint32_t writebits)
{
 uint32_t value;

 RCC_GPIO_LOCK(sc);
 value = RCC_READ(sc, reg);
 value &= ~mask;
 value |= writebits;
 RCC_WRITE(sc, reg, value);
 RCC_GPIO_UNLOCK(sc);
}
