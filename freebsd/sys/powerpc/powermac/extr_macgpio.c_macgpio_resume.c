
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macgpio_softc {int * sc_saved_extint_gpios; int sc_gpios; int * sc_saved_gpios; int * sc_saved_gpio_levels; } ;
typedef int device_t ;


 scalar_t__ GPIO_BASE ;
 int GPIO_COUNT ;
 scalar_t__ GPIO_EXTINT_BASE ;
 int GPIO_EXTINT_COUNT ;
 int GPIO_LEVELS_0 ;
 int GPIO_LEVELS_1 ;
 int bus_write_1 (int ,scalar_t__,int ) ;
 int bus_write_4 (int ,int ,int ) ;
 struct macgpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
macgpio_resume(device_t dev)
{
 struct macgpio_softc *sc;
 int i;

 sc = device_get_softc(dev);
 bus_write_4(sc->sc_gpios, GPIO_LEVELS_0, sc->sc_saved_gpio_levels[0]);
 bus_write_4(sc->sc_gpios, GPIO_LEVELS_1, sc->sc_saved_gpio_levels[1]);

 for (i = 0; i < GPIO_COUNT; i++)
  bus_write_1(sc->sc_gpios, GPIO_BASE + i, sc->sc_saved_gpios[i]);
 for (i = 0; i < GPIO_EXTINT_COUNT; i++)
  bus_write_1(sc->sc_gpios, GPIO_EXTINT_BASE + i, sc->sc_saved_extint_gpios[i]);

 return (0);
}
