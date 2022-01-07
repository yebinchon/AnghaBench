
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_gpio_softc {int gpio_mtx; scalar_t__* gpio_irq_res; int * gpio_irq_rid; scalar_t__* gpio_ih; } ;
typedef int device_t ;


 int KASSERT (int ,char*) ;
 int OCTEON_GPIO_IRQS ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 struct octeon_gpio_softc* device_get_softc (int ) ;
 int gpiobus_detach_bus (int ) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;

__attribute__((used)) static int
octeon_gpio_detach(device_t dev)
{
 struct octeon_gpio_softc *sc = device_get_softc(dev);
 int i;

 KASSERT(mtx_initialized(&sc->gpio_mtx), ("gpio mutex not initialized"));

 for ( i = 0; i < OCTEON_GPIO_IRQS; i++) {
  if (sc->gpio_ih[i])
   bus_teardown_intr(dev, sc->gpio_irq_res[i],
       sc->gpio_ih[i]);
  if (sc->gpio_irq_res[i])
   bus_release_resource(dev, SYS_RES_IRQ,
       sc->gpio_irq_rid[i], sc->gpio_irq_res[i]);
 }
 gpiobus_detach_bus(dev);
 mtx_destroy(&sc->gpio_mtx);

 return(0);
}
