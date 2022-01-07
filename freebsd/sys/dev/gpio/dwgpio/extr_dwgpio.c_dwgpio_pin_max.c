
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwgpio_softc {int gpio_npins; } ;
typedef int device_t ;


 struct dwgpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
dwgpio_pin_max(device_t dev, int *maxpin)
{
 struct dwgpio_softc *sc;

 sc = device_get_softc(dev);

 *maxpin = sc->gpio_npins - 1;

 return (0);
}
