
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbus_softc {int started; scalar_t__ strict; } ;
typedef int device_t ;


 int IICBUS_WRITE (int ,char const*,int,int*,int) ;
 int IIC_ESTATUS ;
 int LSB ;
 int device_get_parent (int ) ;
 scalar_t__ device_get_softc (int ) ;

int
iicbus_write(device_t bus, const char *buf, int len, int *sent, int timeout)
{
 struct iicbus_softc *sc = (struct iicbus_softc *)device_get_softc(bus);


 if (sc->started == 0 || (sc->strict != 0 && (sc->started & LSB) != 0))
  return (IIC_ESTATUS);

 return (IICBUS_WRITE(device_get_parent(bus), buf, len, sent, timeout));
}
