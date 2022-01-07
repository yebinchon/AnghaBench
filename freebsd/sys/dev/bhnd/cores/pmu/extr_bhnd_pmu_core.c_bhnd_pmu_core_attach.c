
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_resource {int dummy; } ;
struct bhnd_pmu_softc {int rid; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int bhnd_alloc_pmu (int ) ;
 struct bhnd_resource* bhnd_alloc_resource_any (int ,int ,int*,int ) ;
 int bhnd_pmu_attach (int ,struct bhnd_resource*) ;
 int bhnd_release_resource (int ,int ,int,struct bhnd_resource*) ;
 struct bhnd_pmu_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static int
bhnd_pmu_core_attach(device_t dev)
{
 struct bhnd_pmu_softc *sc;
 struct bhnd_resource *res;
 int error;
 int rid;

 sc = device_get_softc(dev);


 rid = 0;
 res = bhnd_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (res == ((void*)0)) {
  device_printf(dev, "failed to allocate resources\n");
  return (ENXIO);
 }


 if ((error = bhnd_alloc_pmu(dev))) {
  device_printf(sc->dev, "failed to allocate PMU state: %d\n",
      error);

  return (error);
 }


 if ((error = bhnd_pmu_attach(dev, res))) {
  bhnd_release_resource(dev, SYS_RES_MEMORY, rid, res);
  return (error);
 }

 sc->rid = rid;
 return (0);
}
