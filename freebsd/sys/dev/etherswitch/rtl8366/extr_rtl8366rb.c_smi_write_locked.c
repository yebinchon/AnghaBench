
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct rtl8366rb_softc {int dev; } ;
typedef int device_t ;


 int RTL_IICBUS_TIMEOUT ;
 int RTL_IICBUS_WRITE ;
 int RTL_SMI_ACQUIRED_ASSERT (struct rtl8366rb_softc*) ;
 int device_get_parent (int ) ;
 int iicbus_stop (int ) ;
 int iicbus_write (int ,char*,int,int*,int ) ;
 int smi_select (int ,int ,int) ;

__attribute__((used)) static int
smi_write_locked(struct rtl8366rb_softc *sc, uint16_t addr, uint16_t data, int sleep)
{
 int err;
 device_t iicbus;
 char bytes[4];
 int xferd;

 iicbus = device_get_parent(sc->dev);

 RTL_SMI_ACQUIRED_ASSERT(sc);
 bytes[0] = addr & 0xff;
 bytes[1] = (addr >> 8) & 0xff;
 bytes[2] = data & 0xff;
 bytes[3] = (data >> 8) & 0xff;

 err = smi_select(sc->dev, RTL_IICBUS_WRITE, sleep);
 if (err == 0)
  err = iicbus_write(iicbus, bytes, 4, &xferd, RTL_IICBUS_TIMEOUT);
 iicbus_stop(iicbus);

 return (err);
}
