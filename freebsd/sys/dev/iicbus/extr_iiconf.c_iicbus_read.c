
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbus_softc {int started; scalar_t__ strict; } ;
typedef int device_t ;


 int IICBUS_READ (int ,char*,int,int*,int,int) ;
 int IIC_ESTATUS ;
 int LSB ;
 int device_get_parent (int ) ;
 scalar_t__ device_get_softc (int ) ;

int
iicbus_read(device_t bus, char *buf, int len, int *read, int last, int delay)
{
 struct iicbus_softc *sc = (struct iicbus_softc *)device_get_softc(bus);


 if (sc->started == 0 || (sc->strict != 0 && (sc->started & LSB) == 0))
  return (IIC_ESTATUS);

 return (IICBUS_READ(device_get_parent(bus), buf, len, read, last, delay));
}
