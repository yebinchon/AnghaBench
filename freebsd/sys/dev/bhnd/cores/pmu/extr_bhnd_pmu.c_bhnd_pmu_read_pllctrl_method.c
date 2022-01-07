
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pmu_softc {int dummy; } ;
typedef int device_t ;


 int BHND_PMU_PLL_READ (struct bhnd_pmu_softc*,int ) ;
 int BPMU_LOCK (struct bhnd_pmu_softc*) ;
 int BPMU_UNLOCK (struct bhnd_pmu_softc*) ;
 struct bhnd_pmu_softc* device_get_softc (int ) ;

__attribute__((used)) static uint32_t
bhnd_pmu_read_pllctrl_method(device_t dev, uint32_t reg)
{
 struct bhnd_pmu_softc *sc;
 uint32_t rval;

 sc = device_get_softc(dev);

 BPMU_LOCK(sc);
 rval = BHND_PMU_PLL_READ(sc, reg);
 BPMU_UNLOCK(sc);

 return (rval);
}
