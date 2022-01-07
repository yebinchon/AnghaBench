
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bcm_platform {int dummy; } ;


 int BHND_PMU_ILP_CLOCK ;
 int bcm_get_pmu (struct bcm_platform*) ;
 int bcm_has_pmu (struct bcm_platform*) ;
 int bhnd_pmu_ilp_clock (int ) ;

uint64_t
bcm_get_ilpfreq(struct bcm_platform *bp) {
 if (!bcm_has_pmu(bp))
  return (BHND_PMU_ILP_CLOCK);

 return (bhnd_pmu_ilp_clock(bcm_get_pmu(bp)));
}
