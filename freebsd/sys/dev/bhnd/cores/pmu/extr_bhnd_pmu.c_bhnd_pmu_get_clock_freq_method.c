
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pmu_softc {int query; } ;
typedef int device_t ;
typedef int bhnd_clock ;






 int BPMU_LOCK (struct bhnd_pmu_softc*) ;
 int BPMU_UNLOCK (struct bhnd_pmu_softc*) ;
 int ENODEV ;
 int bhnd_pmu_alp_clock (int *) ;
 int bhnd_pmu_ilp_clock (int *) ;
 int bhnd_pmu_si_clock (int *) ;
 struct bhnd_pmu_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhnd_pmu_get_clock_freq_method(device_t dev, bhnd_clock clock, uint32_t *freq)
{
 struct bhnd_pmu_softc *sc = device_get_softc(dev);

 BPMU_LOCK(sc);
 switch (clock) {
 case 129:
  *freq = bhnd_pmu_si_clock(&sc->query);
  break;

 case 131:
  *freq = bhnd_pmu_alp_clock(&sc->query);
  break;

 case 128:
  *freq = bhnd_pmu_ilp_clock(&sc->query);
  break;

 case 130:
 default:
  BPMU_UNLOCK(sc);
  return (ENODEV);
 }

 BPMU_UNLOCK(sc);
 return (0);
}
