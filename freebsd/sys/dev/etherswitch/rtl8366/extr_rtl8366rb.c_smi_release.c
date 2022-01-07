
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366rb_softc {scalar_t__ smi_acquired; int dev; } ;


 int EWOULDBLOCK ;
 int RTL_LOCK (struct rtl8366rb_softc*) ;
 int RTL_SMI_ACQUIRED_ASSERT (struct rtl8366rb_softc*) ;
 scalar_t__ RTL_TRYLOCK (struct rtl8366rb_softc*) ;
 int RTL_UNLOCK (struct rtl8366rb_softc*) ;
 int RTL_WAITOK ;
 int device_get_parent (int ) ;
 int iicbus_release_bus (int ,int ) ;

__attribute__((used)) static int
smi_release(struct rtl8366rb_softc *sc, int sleep)
{
 if (sleep == RTL_WAITOK)
  RTL_LOCK(sc);
 else
  if (RTL_TRYLOCK(sc) == 0)
   return (EWOULDBLOCK);
 RTL_SMI_ACQUIRED_ASSERT(sc);
 iicbus_release_bus(device_get_parent(sc->dev), sc->dev);
 sc->smi_acquired = 0;
 RTL_UNLOCK(sc);
 return (0);
}
