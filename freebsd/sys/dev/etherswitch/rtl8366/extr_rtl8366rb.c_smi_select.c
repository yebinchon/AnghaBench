
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366rb_softc {scalar_t__ chip_type; } ;
struct iicbus_ivar {int addr; } ;
typedef int device_t ;


 int DEBUG_INCRVAR (int ) ;
 struct iicbus_ivar* IICBUS_IVAR (int ) ;
 int IICBUS_STOP (int ) ;
 int IIC_ENOACK ;
 scalar_t__ RTL8366SR ;
 int RTL_IICBUS_RETRIES ;
 int RTL_IICBUS_RETRY_SLEEP ;
 int RTL_IICBUS_TIMEOUT ;
 int RTL_SMI_ACQUIRED_ASSERT (struct rtl8366rb_softc*) ;
 int RTL_WAITOK ;
 int device_get_parent (int ) ;
 struct rtl8366rb_softc* device_get_softc (int ) ;
 int iic_select_retries ;
 int iicbus_start (int ,int,int ) ;
 int pause (char*,int ) ;

__attribute__((used)) static int
smi_select(device_t dev, int op, int sleep)
{
 struct rtl8366rb_softc *sc;
 int err, i;
 device_t iicbus;
 struct iicbus_ivar *devi;
 int slave;

 sc = device_get_softc(dev);

 iicbus = device_get_parent(dev);
 devi = IICBUS_IVAR(dev);
 slave = devi->addr;

 RTL_SMI_ACQUIRED_ASSERT((struct rtl8366rb_softc *)device_get_softc(dev));

 if (sc->chip_type == RTL8366SR) {

  for (int i=3; i--; )
   IICBUS_STOP(device_get_parent(device_get_parent(dev)));
 }




 for (i = RTL_IICBUS_RETRIES; i--; ) {
  err = iicbus_start(iicbus, slave | op, RTL_IICBUS_TIMEOUT);
  if (err != IIC_ENOACK)
   break;
  if (sleep == RTL_WAITOK) {
   DEBUG_INCRVAR(iic_select_retries);
   pause("smi_select", RTL_IICBUS_RETRY_SLEEP);
  } else
   break;
 }
 return (err);
}
