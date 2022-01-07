
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pmu_softc {int dummy; } ;
typedef int device_t ;
typedef int bhnd_pmu_regulator ;



 int BPMU_LOCK (struct bhnd_pmu_softc*) ;
 int BPMU_UNLOCK (struct bhnd_pmu_softc*) ;
 int EINVAL ;
 int ENODEV ;
 int SET_LDO_VOLTAGE_PAREF ;
 int UINT8_MAX ;
 int bhnd_pmu_set_ldo_voltage (struct bhnd_pmu_softc*,int ,int ) ;
 struct bhnd_pmu_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhnd_pmu_set_voltage_raw_method(device_t dev, bhnd_pmu_regulator regulator,
    uint32_t value)
{
 struct bhnd_pmu_softc *sc;
 int error;

 sc = device_get_softc(dev);

 switch (regulator) {
 case 128:
  if (value > UINT8_MAX)
   return (EINVAL);

  BPMU_LOCK(sc);
  error = bhnd_pmu_set_ldo_voltage(sc, SET_LDO_VOLTAGE_PAREF,
      value);
  BPMU_UNLOCK(sc);

  return (error);

 default:
  return (ENODEV);
 }
}
