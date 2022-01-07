
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_pmu_softc {int dummy; } ;
typedef int device_t ;
typedef int bhnd_pmu_regulator ;



 int BPMU_LOCK (struct bhnd_pmu_softc*) ;
 int BPMU_UNLOCK (struct bhnd_pmu_softc*) ;
 int ENODEV ;
 int bhnd_pmu_paref_ldo_enable (struct bhnd_pmu_softc*,int) ;
 struct bhnd_pmu_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhnd_pmu_disable_regulator_method(device_t dev, bhnd_pmu_regulator regulator)
{
 struct bhnd_pmu_softc *sc;
 int error;

 sc = device_get_softc(dev);

 switch (regulator) {
 case 128:
  BPMU_LOCK(sc);
  error = bhnd_pmu_paref_ldo_enable(sc, 0);
  BPMU_UNLOCK(sc);

  return (error);

 default:
  return (ENODEV);
 }
}
