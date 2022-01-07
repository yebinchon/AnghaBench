
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar5315_gpio_softc {int dummy; } ;


 int GPIO_LOCK (struct ar5315_gpio_softc*) ;
 int GPIO_UNLOCK (struct ar5315_gpio_softc*) ;

__attribute__((used)) static void
ar5315_gpio_intr(void *arg)
{
 struct ar5315_gpio_softc *sc = arg;
 GPIO_LOCK(sc);

 GPIO_UNLOCK(sc);
}
