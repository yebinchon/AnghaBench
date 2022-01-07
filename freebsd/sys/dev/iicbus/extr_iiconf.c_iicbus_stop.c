
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbus_softc {scalar_t__ started; } ;
typedef int device_t ;


 int IICBUS_STOP (int ) ;
 int IIC_ESTATUS ;
 int device_get_parent (int ) ;
 scalar_t__ device_get_softc (int ) ;

int
iicbus_stop(device_t bus)
{
 struct iicbus_softc *sc = (struct iicbus_softc *)device_get_softc(bus);
 int error = 0;

 if (!sc->started)
  return (IIC_ESTATUS);

 error = IICBUS_STOP(device_get_parent(bus));


 sc->started = 0;

 return (error);
}
