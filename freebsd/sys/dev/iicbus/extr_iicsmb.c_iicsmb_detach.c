
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicsmb_softc {int lock; } ;
typedef int device_t ;


 int bus_generic_detach (int ) ;
 int device_delete_children (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
iicsmb_detach(device_t dev)
{
 struct iicsmb_softc *sc = (struct iicsmb_softc *)device_get_softc(dev);

 bus_generic_detach(dev);
 device_delete_children(dev);
 mtx_destroy(&sc->lock);

 return (0);
}
