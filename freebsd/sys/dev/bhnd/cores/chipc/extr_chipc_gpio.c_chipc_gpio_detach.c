
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chipc_gpio_softc {int mem_res; int mem_rid; } ;
typedef int device_t ;


 int BHND_SERVICE_ANY ;
 int CC_GPIO_LOCK_DESTROY (struct chipc_gpio_softc*) ;
 int SYS_RES_MEMORY ;
 int bhnd_deregister_provider (int ,int ) ;
 int bhnd_release_resource (int ,int ,int ,int ) ;
 int bus_generic_detach (int ) ;
 struct chipc_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
chipc_gpio_detach(device_t dev)
{
 struct chipc_gpio_softc *sc;
 int error;

 sc = device_get_softc(dev);

 if ((error = bus_generic_detach(dev)))
  return (error);

 if ((error = bhnd_deregister_provider(dev, BHND_SERVICE_ANY)))
  return (error);

 bhnd_release_resource(dev, SYS_RES_MEMORY, sc->mem_rid, sc->mem_res);
 CC_GPIO_LOCK_DESTROY(sc);

 return (0);
}
