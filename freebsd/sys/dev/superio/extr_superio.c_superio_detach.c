
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siosc {int conf_lock; int io_res; int io_rid; int * chardev; } ;
typedef int device_t ;


 int SYS_RES_IOPORT ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int destroy_dev (int *) ;
 int device_delete_children (int ) ;
 struct siosc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
superio_detach(device_t dev)
{
 struct siosc *sc = device_get_softc(dev);
 int error;

 error = bus_generic_detach(dev);
 if (error != 0)
  return (error);
 if (sc->chardev != ((void*)0))
  destroy_dev(sc->chardev);
 device_delete_children(dev);
 bus_release_resource(dev, SYS_RES_IOPORT, sc->io_rid, sc->io_res);
 mtx_destroy(&sc->conf_lock);
 return (0);
}
