
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qoriq_gpio_softc {int * busdev; int * sc_mem; int dev; } ;
typedef int device_t ;


 int ENOMEM ;
 int GPIO_LOCK_INIT (struct qoriq_gpio_softc*) ;
 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (int ) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct qoriq_gpio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int * gpiobus_attach_bus (int ) ;
 int ofw_bus_get_node (int ) ;
 int qoriq_gpio_detach (int ) ;

__attribute__((used)) static int
qoriq_gpio_attach(device_t dev)
{
 struct qoriq_gpio_softc *sc = device_get_softc(dev);
 int rid;

 sc->dev = dev;

 GPIO_LOCK_INIT(sc);


 rid = 0;
 sc->sc_mem = bus_alloc_resource_any(dev,
       SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (sc->sc_mem == ((void*)0)) {
  device_printf(dev, "Can't allocate memory for device output port");
  qoriq_gpio_detach(dev);
  return (ENOMEM);
 }

 sc->busdev = gpiobus_attach_bus(dev);
 if (sc->busdev == ((void*)0)) {
  qoriq_gpio_detach(dev);
  return (ENOMEM);
 }

 OF_device_register_xref(OF_xref_from_node(ofw_bus_get_node(dev)), dev);

 return (0);
}
