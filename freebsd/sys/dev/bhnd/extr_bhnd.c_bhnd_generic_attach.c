
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_softc {int dev; } ;
typedef int device_t ;


 int EBUSY ;
 int bhnd_bus_probe_children (int ) ;
 int bhnd_delete_children (struct bhnd_softc*) ;
 struct bhnd_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;

int
bhnd_generic_attach(device_t dev)
{
 struct bhnd_softc *sc;
 int error;

 if (device_is_attached(dev))
  return (EBUSY);

 sc = device_get_softc(dev);
 sc->dev = dev;


 if ((error = bhnd_bus_probe_children(dev))) {
  bhnd_delete_children(sc);
  return (error);
 }

 return (0);
}
