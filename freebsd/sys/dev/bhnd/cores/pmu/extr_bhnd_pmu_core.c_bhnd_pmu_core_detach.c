
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_pmu_softc {int res; int rid; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bhnd_pmu_detach (int ) ;
 int bhnd_release_resource (int ,int ,int ,int ) ;
 struct bhnd_pmu_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhnd_pmu_core_detach(device_t dev)
{
 struct bhnd_pmu_softc *sc;
 int error;

 sc = device_get_softc(dev);


 if ((error = bhnd_pmu_detach(dev)))
  return (error);

 bhnd_release_resource(dev, SYS_RES_MEMORY, sc->rid, sc->res);
 return (0);
}
