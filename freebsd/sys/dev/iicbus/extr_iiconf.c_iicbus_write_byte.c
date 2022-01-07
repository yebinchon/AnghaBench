
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbus_softc {int started; scalar_t__ strict; } ;
typedef int device_t ;


 int IIC_ESTATUS ;
 int LSB ;
 struct iicbus_softc* device_get_softc (int ) ;
 int iicbus_write (int ,char*,int,int*,int) ;

int
iicbus_write_byte(device_t bus, char byte, int timeout)
{
 struct iicbus_softc *sc = device_get_softc(bus);
 char data = byte;
 int sent;


 if (sc->started == 0 || (sc->strict != 0 && (sc->started & LSB) != 0))
  return (IIC_ESTATUS);

 return (iicbus_write(bus, &data, 1, &sent, timeout));
}
