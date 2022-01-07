
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar71xx_gpio_softc {int dummy; } ;


 int GPIO_LOCK (struct ar71xx_gpio_softc*) ;
 int GPIO_UNLOCK (struct ar71xx_gpio_softc*) ;

__attribute__((used)) static void
ar71xx_gpio_intr(void *arg)
{
 struct ar71xx_gpio_softc *sc = arg;
 GPIO_LOCK(sc);

 GPIO_UNLOCK(sc);
}
