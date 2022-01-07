
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbus_softc {void* owner; void* busydev; scalar_t__ owncount; } ;
typedef void* device_t ;
typedef int caddr_t ;


 scalar_t__ DS_ATTACHING ;
 int IICBUS_CALLBACK (int ,int ,int ) ;
 int IICBUS_LOCK (struct iicbus_softc*) ;
 int IICBUS_UNLOCK (struct iicbus_softc*) ;
 int IIC_RECURSIVE ;
 int IIC_REQUEST_BUS ;
 int device_busy (void*) ;
 int device_get_parent (void*) ;
 scalar_t__ device_get_softc (void*) ;
 scalar_t__ device_get_state (void*) ;
 int device_unbusy (void*) ;
 int iicbus_poll (struct iicbus_softc*,int) ;
 int wakeup_one (struct iicbus_softc*) ;

int
iicbus_request_bus(device_t bus, device_t dev, int how)
{
 struct iicbus_softc *sc = (struct iicbus_softc *)device_get_softc(bus);
 int error = 0;

 IICBUS_LOCK(sc);

 for (;;) {
  if (sc->owner == ((void*)0))
   break;
  if ((how & IIC_RECURSIVE) && sc->owner == dev)
   break;
  if ((error = iicbus_poll(sc, how)) != 0)
   break;
 }

 if (error == 0) {
  ++sc->owncount;
  if (sc->owner == ((void*)0)) {
   sc->owner = dev;







   if (device_get_state(dev) < DS_ATTACHING)
    sc->busydev = bus;
   else
    sc->busydev = dev;
   device_busy(sc->busydev);






   IICBUS_UNLOCK(sc);

   error = IICBUS_CALLBACK(device_get_parent(bus),
       IIC_REQUEST_BUS, (caddr_t)&how);
   IICBUS_LOCK(sc);

   if (error != 0) {
    sc->owner = ((void*)0);
    sc->owncount = 0;
    wakeup_one(sc);
    device_unbusy(sc->busydev);
   }
  }
 }

 IICBUS_UNLOCK(sc);

 return (error);
}
