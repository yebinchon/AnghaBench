
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int chip_id; } ;
struct bhnd_pmu_query {TYPE_1__ cid; } ;


 int BHND_CHIPID_BCM4319 ;
 int BHND_CHIPID_BCM43234 ;
 int BHND_CHIPID_BCM43235 ;
 int BHND_CHIPID_BCM43236 ;
 int BHND_CHIPID_BCM43237 ;
 int BHND_CHIPID_BCM43238 ;
 int BHND_CHIPID_BCM4329 ;
 int BHND_CHIPID_BCM4330 ;
 int BHND_CHIPID_BCM4336 ;




 int BHND_PMU4706_MAINPLL_PLL0 ;
 int BHND_PMU4716_MAINPLL_PLL0 ;
 int BHND_PMU5356_MAINPLL_PLL0 ;
 int BHND_PMU5357_MAINPLL_PLL0 ;
 int BHND_PMU5_MAINPLL_MEM ;
 int BHND_PMU6_MAINPLL_MEM ;
 int BHND_PMU_REV (struct bhnd_pmu_query*) ;
 int bhnd_pmu5_clock (struct bhnd_pmu_query*,int ,int ) ;
 int bhnd_pmu6_4706_clock (struct bhnd_pmu_query*,int ,int ) ;
 int bhnd_pmu_si_clock (struct bhnd_pmu_query*) ;

uint32_t
bhnd_pmu_mem_clock(struct bhnd_pmu_query *sc)
{
 if (BHND_PMU_REV(sc) >= 5 &&
     sc->cid.chip_id != BHND_CHIPID_BCM4329 &&
     sc->cid.chip_id != BHND_CHIPID_BCM4319 &&
     sc->cid.chip_id != BHND_CHIPID_BCM43234 &&
     sc->cid.chip_id != BHND_CHIPID_BCM43235 &&
     sc->cid.chip_id != BHND_CHIPID_BCM43236 &&
     sc->cid.chip_id != BHND_CHIPID_BCM43237 &&
     sc->cid.chip_id != BHND_CHIPID_BCM43238 &&
     sc->cid.chip_id != BHND_CHIPID_BCM4336 &&
     sc->cid.chip_id != BHND_CHIPID_BCM4330)
 {
  switch (sc->cid.chip_id) {
  case 129:
   return (bhnd_pmu5_clock(sc, BHND_PMU5356_MAINPLL_PLL0,
       BHND_PMU5_MAINPLL_MEM));

  case 128:
  case 130:
   return (bhnd_pmu5_clock(sc, BHND_PMU5357_MAINPLL_PLL0,
       BHND_PMU5_MAINPLL_MEM));

  case 131:
   return (bhnd_pmu6_4706_clock(sc,
       BHND_PMU4706_MAINPLL_PLL0, BHND_PMU6_MAINPLL_MEM));

  default:
   return (bhnd_pmu5_clock(sc, BHND_PMU4716_MAINPLL_PLL0,
       BHND_PMU5_MAINPLL_MEM));
  }

 } else {
  return (bhnd_pmu_si_clock(sc));
 }
}
