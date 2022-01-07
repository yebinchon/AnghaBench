
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int chip_id; } ;
struct bhnd_pmu_softc {TYPE_1__ cid; } ;





 int BHND_PMU_AND_4 (struct bhnd_pmu_softc*,int ,int ) ;
 int BHND_PMU_MIN_RES_MASK ;
 int BHND_PMU_OR_4 (struct bhnd_pmu_softc*,int ,int ) ;
 int ENODEV ;
 int PMURES_BIT (int ) ;
 int RES4312_PA_REF_LDO ;
 int RES4328_PA_REF_LDO ;
 int RES5354_PA_REF_LDO ;

int
bhnd_pmu_paref_ldo_enable(struct bhnd_pmu_softc *sc, bool enable)
{
 uint32_t ldo;

 switch (sc->cid.chip_id) {
 case 129:
  ldo = PMURES_BIT(RES4328_PA_REF_LDO);
  break;
 case 128:
  ldo = PMURES_BIT(RES5354_PA_REF_LDO);
  break;
 case 130:
  ldo = PMURES_BIT(RES4312_PA_REF_LDO);
  break;
 default:
  return (ENODEV);
 }

 if (enable) {
  BHND_PMU_OR_4(sc, BHND_PMU_MIN_RES_MASK, ldo);
 } else {
  BHND_PMU_AND_4(sc, BHND_PMU_MIN_RES_MASK, ~ldo);
 }

 return (0);
}
