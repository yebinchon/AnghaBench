
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nct_softc {int * iores; int iorid; } ;
typedef int device_t ;


 int GPIO_ASSERT_UNLOCKED (struct nct_softc*) ;
 int GPIO_LOCK_DESTROY (struct nct_softc*) ;
 int SYS_RES_IOPORT ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct nct_softc* device_get_softc (int ) ;
 int gpiobus_detach_bus (int ) ;

__attribute__((used)) static int
nct_detach(device_t dev)
{
 struct nct_softc *sc;

 sc = device_get_softc(dev);
 gpiobus_detach_bus(dev);

 if (sc->iores != ((void*)0))
  bus_release_resource(dev, SYS_RES_IOPORT, sc->iorid, sc->iores);
 GPIO_ASSERT_UNLOCKED(sc);
 GPIO_LOCK_DESTROY(sc);

 return (0);
}
