
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bhnd_pmu_softc {int dummy; } ;


 int BHND_PMU_REGCTRL_WRITE (struct bhnd_pmu_softc*,int,int,int ) ;

void
bhnd_pmu_set_switcher_voltage(struct bhnd_pmu_softc *sc, uint8_t bb_voltage,
    uint8_t rf_voltage)
{
 BHND_PMU_REGCTRL_WRITE(sc, 0x01, (bb_voltage & 0x1f) << 22, ~0);
 BHND_PMU_REGCTRL_WRITE(sc, 0x00, (rf_voltage & 0x1f) << 14, ~0);
}
