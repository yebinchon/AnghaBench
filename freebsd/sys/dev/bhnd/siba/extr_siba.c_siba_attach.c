
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siba_softc {int dev; } ;
typedef int device_t ;


 int SIBA_LOCK_DESTROY (struct siba_softc*) ;
 int SIBA_LOCK_INIT (struct siba_softc*) ;
 int device_delete_children (int ) ;
 struct siba_softc* device_get_softc (int ) ;
 int siba_add_children (int ) ;

int
siba_attach(device_t dev)
{
 struct siba_softc *sc;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;

 SIBA_LOCK_INIT(sc);


 if ((error = siba_add_children(dev))) {
  device_delete_children(dev);
  SIBA_LOCK_DESTROY(sc);
  return (error);
 }

 return (0);
}
