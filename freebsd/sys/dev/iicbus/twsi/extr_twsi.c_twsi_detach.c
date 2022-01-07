
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twsi_softc {int mutex; int * res; int * intrhand; int dev; int * iicbus; } ;
typedef int device_t ;


 int bus_generic_detach (int ) ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int *) ;
 int device_delete_child (int ,int *) ;
 struct twsi_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int res_spec ;

int
twsi_detach(device_t dev)
{
 struct twsi_softc *sc;
 int rv;

 sc = device_get_softc(dev);

 if ((rv = bus_generic_detach(dev)) != 0)
  return (rv);

 if (sc->iicbus != ((void*)0))
  if ((rv = device_delete_child(dev, sc->iicbus)) != 0)
   return (rv);

 if (sc->intrhand != ((void*)0))
  bus_teardown_intr(sc->dev, sc->res[1], sc->intrhand);

 bus_release_resources(dev, res_spec, sc->res);

 mtx_destroy(&sc->mutex);
 return (0);
}
