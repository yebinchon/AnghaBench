
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct iicbus_softc {scalar_t__ started; } ;
typedef int device_t ;


 int IICBUS_START (int ,scalar_t__,int) ;
 int IIC_ESTATUS ;
 int device_get_parent (int ) ;
 scalar_t__ device_get_softc (int ) ;

int
iicbus_start(device_t bus, u_char slave, int timeout)
{
 struct iicbus_softc *sc = (struct iicbus_softc *)device_get_softc(bus);
 int error = 0;

 if (sc->started)
  return (IIC_ESTATUS);

 if (!(error = IICBUS_START(device_get_parent(bus), slave, timeout)))
  sc->started = slave;
 else
  sc->started = 0;

 return (error);
}
