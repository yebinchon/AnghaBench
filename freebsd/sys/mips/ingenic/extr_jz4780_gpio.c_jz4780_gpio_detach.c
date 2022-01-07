
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_gpio_softc {int res; } ;
typedef int device_t ;


 int JZ4780_GPIO_LOCK_DESTROY (struct jz4780_gpio_softc*) ;
 int bus_release_resources (int ,int ,int ) ;
 struct jz4780_gpio_softc* device_get_softc (int ) ;
 int jz4780_gpio_spec ;

__attribute__((used)) static int
jz4780_gpio_detach(device_t dev)
{
 struct jz4780_gpio_softc *sc = device_get_softc(dev);

 bus_release_resources(dev, jz4780_gpio_spec, sc->res);
 JZ4780_GPIO_LOCK_DESTROY(sc);
 return (0);
}
