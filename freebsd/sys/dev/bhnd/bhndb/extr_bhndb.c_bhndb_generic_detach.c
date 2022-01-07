
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_softc {int bus_res; int services; } ;
typedef int device_t ;


 int BHNDB_LOCK_DESTROY (struct bhndb_softc*) ;
 int bhnd_service_registry_fini (int *) ;
 int bhndb_free_resources (int ) ;
 int bus_generic_detach (int ) ;
 int device_delete_children (int ) ;
 struct bhndb_softc* device_get_softc (int ) ;

int
bhndb_generic_detach(device_t dev)
{
 struct bhndb_softc *sc;
 int error;

 sc = device_get_softc(dev);


 if ((error = bus_generic_detach(dev)))
  return (error);


 if ((error = device_delete_children(dev)))
  return (error);


 if ((error = bhnd_service_registry_fini(&sc->services)))
  return (error);


 bhndb_free_resources(sc->bus_res);

 BHNDB_LOCK_DESTROY(sc);

 return (0);
}
