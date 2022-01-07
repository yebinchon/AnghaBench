
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_softc {int dummy; } ;
typedef int device_t ;


 int EBUSY ;
 int bhnd_delete_children (struct bhnd_softc*) ;
 struct bhnd_softc* device_get_softc (int ) ;
 int device_is_attached (int ) ;

int
bhnd_generic_detach(device_t dev)
{
 struct bhnd_softc *sc;
 int error;

 if (!device_is_attached(dev))
  return (EBUSY);

 sc = device_get_softc(dev);

 if ((error = bhnd_delete_children(sc)))
  return (error);

 return (0);
}
