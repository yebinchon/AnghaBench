
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siba_softc {int dummy; } ;
typedef int device_t ;


 int SIBA_LOCK_DESTROY (struct siba_softc*) ;
 int bhnd_generic_detach (int ) ;
 struct siba_softc* device_get_softc (int ) ;

int
siba_detach(device_t dev)
{
 struct siba_softc *sc;
 int error;

 sc = device_get_softc(dev);

 if ((error = bhnd_generic_detach(dev)))
  return (error);

 SIBA_LOCK_DESTROY(sc);

 return (0);
}
