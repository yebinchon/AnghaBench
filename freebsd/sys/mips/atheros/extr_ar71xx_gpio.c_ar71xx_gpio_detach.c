
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar71xx_gpio_softc {int gpio_mtx; scalar_t__ gpio_pins; scalar_t__ gpio_mem_res; int gpio_mem_rid; scalar_t__ gpio_irq_res; int gpio_irq_rid; scalar_t__ gpio_ih; } ;
typedef int device_t ;


 int KASSERT (int ,char*) ;
 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 struct ar71xx_gpio_softc* device_get_softc (int ) ;
 int free (scalar_t__,int ) ;
 int gpiobus_detach_bus (int ) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;

__attribute__((used)) static int
ar71xx_gpio_detach(device_t dev)
{
 struct ar71xx_gpio_softc *sc = device_get_softc(dev);

 KASSERT(mtx_initialized(&sc->gpio_mtx), ("gpio mutex not initialized"));

 gpiobus_detach_bus(dev);
 if (sc->gpio_ih)
  bus_teardown_intr(dev, sc->gpio_irq_res, sc->gpio_ih);
 if (sc->gpio_irq_res)
  bus_release_resource(dev, SYS_RES_IRQ, sc->gpio_irq_rid,
      sc->gpio_irq_res);
 if (sc->gpio_mem_res)
  bus_release_resource(dev, SYS_RES_MEMORY, sc->gpio_mem_rid,
      sc->gpio_mem_res);
 if (sc->gpio_pins)
  free(sc->gpio_pins, M_DEVBUF);
 mtx_destroy(&sc->gpio_mtx);

 return(0);
}
