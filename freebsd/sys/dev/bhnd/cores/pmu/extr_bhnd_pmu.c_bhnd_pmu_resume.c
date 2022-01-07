
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_pmu_softc {int dev; } ;
typedef int device_t ;


 int bhnd_pmu_init (struct bhnd_pmu_softc*) ;
 struct bhnd_pmu_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

int
bhnd_pmu_resume(device_t dev)
{
 struct bhnd_pmu_softc *sc;
 int error;

 sc = device_get_softc(dev);


 if ((error = bhnd_pmu_init(sc))) {
  device_printf(sc->dev, "PMU init failed: %d\n", error);
  return (error);
 }

 return (0);
}
