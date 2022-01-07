
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chipc_softc {int core_region; } ;
typedef int device_t ;


 int BHND_SERVICE_ANY ;
 int CHIPC_LOCK_DESTROY (struct chipc_softc*) ;
 int RF_ACTIVE ;
 int RF_ALLOCATED ;
 int bhnd_deregister_provider (int ,int ) ;
 int bus_generic_detach (int ) ;
 int chipc_free_rman (struct chipc_softc*) ;
 int chipc_release_region (struct chipc_softc*,int ,int) ;
 int device_delete_children (int ) ;
 struct chipc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
chipc_detach(device_t dev)
{
 struct chipc_softc *sc;
 int error;

 sc = device_get_softc(dev);

 if ((error = bus_generic_detach(dev)))
  return (error);

 if ((error = device_delete_children(dev)))
  return (error);

 if ((error = bhnd_deregister_provider(dev, BHND_SERVICE_ANY)))
  return (error);

 chipc_release_region(sc, sc->core_region, RF_ALLOCATED|RF_ACTIVE);
 chipc_free_rman(sc);

 CHIPC_LOCK_DESTROY(sc);

 return (0);
}
