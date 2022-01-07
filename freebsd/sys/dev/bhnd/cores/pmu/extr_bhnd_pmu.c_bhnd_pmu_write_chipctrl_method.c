
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pmu_softc {int dummy; } ;
typedef int device_t ;


 int BHND_PMU_CCTRL_WRITE (struct bhnd_pmu_softc*,int ,int ,int ) ;
 int BPMU_LOCK (struct bhnd_pmu_softc*) ;
 int BPMU_UNLOCK (struct bhnd_pmu_softc*) ;
 struct bhnd_pmu_softc* device_get_softc (int ) ;

__attribute__((used)) static void
bhnd_pmu_write_chipctrl_method(device_t dev, uint32_t reg, uint32_t value,
    uint32_t mask)
{
 struct bhnd_pmu_softc *sc = device_get_softc(dev);

 BPMU_LOCK(sc);
 BHND_PMU_CCTRL_WRITE(sc, reg, value, mask);
 BPMU_UNLOCK(sc);
}
