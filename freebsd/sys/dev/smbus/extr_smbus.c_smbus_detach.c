
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbus_softc {int lock; } ;
typedef int device_t ;


 int bus_generic_detach (int ) ;
 int device_delete_children (int ) ;
 struct smbus_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
smbus_detach(device_t dev)
{
 struct smbus_softc *sc = device_get_softc(dev);
 int error;

 error = bus_generic_detach(dev);
 if (error)
  return (error);
 device_delete_children(dev);
 mtx_destroy(&sc->lock);

 return (0);
}
