
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicbus_softc {scalar_t__ owner; scalar_t__ owncount; int busydev; } ;
typedef scalar_t__ device_t ;


 int IICBUS_CALLBACK (int ,int ,int *) ;
 int IICBUS_LOCK (struct iicbus_softc*) ;
 int IICBUS_UNLOCK (struct iicbus_softc*) ;
 int IIC_EBUSBSY ;
 int IIC_RELEASE_BUS ;
 int device_get_parent (scalar_t__) ;
 scalar_t__ device_get_softc (scalar_t__) ;
 int device_unbusy (int ) ;
 int wakeup_one (struct iicbus_softc*) ;

int
iicbus_release_bus(device_t bus, device_t dev)
{
 struct iicbus_softc *sc = (struct iicbus_softc *)device_get_softc(bus);

 IICBUS_LOCK(sc);

 if (sc->owner != dev) {
  IICBUS_UNLOCK(sc);
  return (IIC_EBUSBSY);
 }

 if (--sc->owncount == 0) {

  IICBUS_UNLOCK(sc);
  IICBUS_CALLBACK(device_get_parent(bus), IIC_RELEASE_BUS, ((void*)0));
  IICBUS_LOCK(sc);
  sc->owner = ((void*)0);
  wakeup_one(sc);
  device_unbusy(sc->busydev);
 }
 IICBUS_UNLOCK(sc);
 return (0);
}
