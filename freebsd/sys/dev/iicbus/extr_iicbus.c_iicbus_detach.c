
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbus_softc {int lock; } ;
typedef int device_t ;


 struct iicbus_softc* IICBUS_SOFTC (int ) ;
 int IIC_FASTEST ;
 int bus_generic_detach (int ) ;
 int device_delete_children (int ) ;
 int iicbus_reset (int ,int ,int ,int *) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
iicbus_detach(device_t dev)
{
 struct iicbus_softc *sc = IICBUS_SOFTC(dev);

 iicbus_reset(dev, IIC_FASTEST, 0, ((void*)0));
 bus_generic_detach(dev);
 device_delete_children(dev);
 mtx_destroy(&sc->lock);
 return (0);
}
