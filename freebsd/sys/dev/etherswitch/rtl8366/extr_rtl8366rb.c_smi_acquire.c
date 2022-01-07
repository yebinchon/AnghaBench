
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366rb_softc {scalar_t__ smi_acquired; int dev; } ;


 int EBUSY ;
 int EWOULDBLOCK ;
 int IIC_DONTWAIT ;
 int IIC_WAIT ;
 int RTL_LOCK (struct rtl8366rb_softc*) ;
 scalar_t__ RTL_SMI_ACQUIRED ;
 scalar_t__ RTL_TRYLOCK (struct rtl8366rb_softc*) ;
 int RTL_UNLOCK (struct rtl8366rb_softc*) ;
 int RTL_WAITOK ;
 int device_get_parent (int ) ;
 int iicbus_request_bus (int ,int ,int ) ;

__attribute__((used)) static int
smi_acquire(struct rtl8366rb_softc *sc, int sleep)
{
 int r = 0;
 if (sleep == RTL_WAITOK)
  RTL_LOCK(sc);
 else
  if (RTL_TRYLOCK(sc) == 0)
   return (EWOULDBLOCK);
 if (sc->smi_acquired == RTL_SMI_ACQUIRED)
  r = EBUSY;
 else {
  r = iicbus_request_bus(device_get_parent(sc->dev), sc->dev, sleep == RTL_WAITOK ? IIC_WAIT : IIC_DONTWAIT);

  if (r == 0)
   sc->smi_acquired = RTL_SMI_ACQUIRED;
 }
 RTL_UNLOCK(sc);
 return (r);
}
