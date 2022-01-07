
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_pmu_softc {int chipc_dev; int dev; int clkctl; int query; } ;
typedef int device_t ;


 int BHND_SERVICE_ANY ;
 int BHND_SERVICE_CHIPC ;
 int BPMU_LOCK_DESTROY (struct bhnd_pmu_softc*) ;
 int bhnd_deregister_provider (int ,int ) ;
 int bhnd_free_core_clkctl (int ) ;
 int bhnd_pmu_query_fini (int *) ;
 int bhnd_release_provider (int ,int ,int ) ;
 struct bhnd_pmu_softc* device_get_softc (int ) ;

int
bhnd_pmu_detach(device_t dev)
{
 struct bhnd_pmu_softc *sc;
 int error;

 sc = device_get_softc(dev);

 if ((error = bhnd_deregister_provider(dev, BHND_SERVICE_ANY)))
  return (error);

 BPMU_LOCK_DESTROY(sc);
 bhnd_pmu_query_fini(&sc->query);
 bhnd_free_core_clkctl(sc->clkctl);
 bhnd_release_provider(sc->dev, sc->chipc_dev, BHND_SERVICE_CHIPC);

 return (0);
}
