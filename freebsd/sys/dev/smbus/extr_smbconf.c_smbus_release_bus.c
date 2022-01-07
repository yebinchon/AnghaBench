
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbus_softc {scalar_t__ owner; int lock; } ;
typedef scalar_t__ device_t ;


 int EACCES ;
 int SMBUS_CALLBACK (int ,int ,int *) ;
 int SMB_RELEASE_BUS ;
 int device_get_parent (scalar_t__) ;
 struct smbus_softc* device_get_softc (scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct smbus_softc*) ;

int
smbus_release_bus(device_t bus, device_t dev)
{
 struct smbus_softc *sc = device_get_softc(bus);
 int error;


 error = SMBUS_CALLBACK(device_get_parent(bus), SMB_RELEASE_BUS, ((void*)0));

 if (error)
  return (error);

 mtx_lock(&sc->lock);
 if (sc->owner == dev) {
  sc->owner = ((void*)0);


  wakeup(sc);
 } else
  error = EACCES;
 mtx_unlock(&sc->lock);

 return (error);
}
