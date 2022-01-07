
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bytgpio_softc {int * sc_mem_res; int sc_mem_rid; scalar_t__ sc_pad_funcs; scalar_t__ sc_busdev; } ;
typedef int device_t ;


 int BYTGPIO_LOCK_DESTROY (struct bytgpio_softc*) ;
 int M_DEVBUF ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct bytgpio_softc* device_get_softc (int ) ;
 int free (scalar_t__,int ) ;
 int gpiobus_detach_bus (int ) ;

__attribute__((used)) static int
bytgpio_detach(device_t dev)
{
 struct bytgpio_softc *sc;

 sc = device_get_softc(dev);

 if (sc->sc_busdev)
  gpiobus_detach_bus(dev);

 BYTGPIO_LOCK_DESTROY(sc);

 if (sc->sc_pad_funcs)
  free(sc->sc_pad_funcs, M_DEVBUF);

 if (sc->sc_mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->sc_mem_rid, sc->sc_mem_res);

 return (0);
}
