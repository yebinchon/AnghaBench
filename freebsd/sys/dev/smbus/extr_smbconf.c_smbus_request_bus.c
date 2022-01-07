
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbus_softc {scalar_t__ owner; int lock; } ;
typedef scalar_t__ device_t ;


 int EWOULDBLOCK ;
 int SMBUS_CALLBACK (scalar_t__,int ,int*) ;
 int SMB_RELEASE_BUS ;
 int SMB_REQUEST_BUS ;
 scalar_t__ device_get_parent (scalar_t__) ;
 struct smbus_softc* device_get_softc (scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int smbus_poll (struct smbus_softc*,int) ;

int
smbus_request_bus(device_t bus, device_t dev, int how)
{
 struct smbus_softc *sc = device_get_softc(bus);
 device_t parent;
 int error;


 parent = device_get_parent(bus);
 mtx_lock(&sc->lock);
 do {
  mtx_unlock(&sc->lock);
  error = SMBUS_CALLBACK(parent, SMB_REQUEST_BUS, &how);
  mtx_lock(&sc->lock);

  if (error)
   error = smbus_poll(sc, how);
 } while (error == EWOULDBLOCK);

 while (error == 0) {
  if (sc->owner && sc->owner != dev)
   error = smbus_poll(sc, how);
  else {
   sc->owner = dev;
   break;
  }


  if (error) {
   mtx_unlock(&sc->lock);
   SMBUS_CALLBACK(parent, SMB_RELEASE_BUS, &how);
   return (error);
  }
 }
 mtx_unlock(&sc->lock);

 return (error);
}
