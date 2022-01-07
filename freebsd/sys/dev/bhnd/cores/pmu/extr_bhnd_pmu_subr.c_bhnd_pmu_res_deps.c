
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct bhnd_pmu_softc {int dummy; } ;


 int BHND_PMURES_BIT (scalar_t__) ;
 int BHND_PMU_READ_4 (struct bhnd_pmu_softc*,int ) ;
 scalar_t__ BHND_PMU_RESNUM_MAX ;
 int BHND_PMU_RES_DEP_MASK ;
 int BHND_PMU_RES_TABLE_SEL ;
 int BHND_PMU_WRITE_4 (struct bhnd_pmu_softc*,int ,scalar_t__) ;

__attribute__((used)) static uint32_t
bhnd_pmu_res_deps(struct bhnd_pmu_softc *sc, uint32_t rsrcs, bool all)
{
 uint32_t deps;

 deps = 0;
 for (uint8_t i = 0; i <= BHND_PMU_RESNUM_MAX; i++) {
  if (!(rsrcs & BHND_PMURES_BIT(i)))
   continue;

  BHND_PMU_WRITE_4(sc, BHND_PMU_RES_TABLE_SEL, i);
  deps |= BHND_PMU_READ_4(sc, BHND_PMU_RES_DEP_MASK);
 }


 if (deps == 0)
  return (0);


 if (all)
  deps |= bhnd_pmu_res_deps(sc, deps, 1);

 return (deps);
}
