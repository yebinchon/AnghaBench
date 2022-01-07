
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owc_gpiobus_softc {int dummy; } ;
typedef int device_t ;


 int OWC_GPIOBUS_LOCK_DESTROY (struct owc_gpiobus_softc*) ;
 int bus_generic_detach (int ) ;
 struct owc_gpiobus_softc* device_get_softc (int ) ;

__attribute__((used)) static int
owc_gpiobus_detach(device_t dev)
{
 struct owc_gpiobus_softc *sc;

 sc = device_get_softc(dev);
 OWC_GPIOBUS_LOCK_DESTROY(sc);
 bus_generic_detach(dev);
 return (0);
}
