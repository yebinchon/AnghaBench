
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macgpio_softc {int sc_gpios; void** sc_saved_extint_gpios; void** sc_saved_gpios; void** sc_saved_gpio_levels; } ;
typedef int device_t ;


 scalar_t__ GPIO_BASE ;
 int GPIO_COUNT ;
 scalar_t__ GPIO_EXTINT_BASE ;
 int GPIO_EXTINT_COUNT ;
 int GPIO_LEVELS_0 ;
 int GPIO_LEVELS_1 ;
 void* bus_read_1 (int ,scalar_t__) ;
 void* bus_read_4 (int ,int ) ;
 struct macgpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
macgpio_suspend(device_t dev)
{
 struct macgpio_softc *sc;
 int i;

 sc = device_get_softc(dev);
 sc->sc_saved_gpio_levels[0] = bus_read_4(sc->sc_gpios, GPIO_LEVELS_0);
 sc->sc_saved_gpio_levels[1] = bus_read_4(sc->sc_gpios, GPIO_LEVELS_1);

 for (i = 0; i < GPIO_COUNT; i++)
  sc->sc_saved_gpios[i] = bus_read_1(sc->sc_gpios, GPIO_BASE + i);
 for (i = 0; i < GPIO_EXTINT_COUNT; i++)
  sc->sc_saved_extint_gpios[i] = bus_read_1(sc->sc_gpios, GPIO_EXTINT_BASE + i);

 return (0);
}
