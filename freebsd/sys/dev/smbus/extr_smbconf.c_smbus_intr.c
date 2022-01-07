
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct smbus_softc {int lock; scalar_t__ owner; } ;
typedef int device_t ;


 int SMBUS_INTR (scalar_t__,int ,char,char,int) ;
 struct smbus_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
smbus_intr(device_t bus, u_char devaddr, char low, char high, int error)
{
 struct smbus_softc *sc = device_get_softc(bus);


 mtx_lock(&sc->lock);
 if (sc->owner)
  SMBUS_INTR(sc->owner, devaddr, low, high, error);
 mtx_unlock(&sc->lock);
}
