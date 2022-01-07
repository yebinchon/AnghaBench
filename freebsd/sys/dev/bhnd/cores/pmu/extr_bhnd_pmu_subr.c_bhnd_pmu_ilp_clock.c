
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pmu_query {int ilp_cps; } ;


 int BHND_PMU_READ_4 (struct bhnd_pmu_query*,int ) ;
 int BHND_PMU_TIMER ;
 int DELAY (int) ;
 int ILP_CALC_DUR ;

uint32_t
bhnd_pmu_ilp_clock(struct bhnd_pmu_query *sc)
{
 uint32_t start, end, delta;

 if (sc->ilp_cps == 0) {
  start = BHND_PMU_READ_4(sc, BHND_PMU_TIMER);
  DELAY(ILP_CALC_DUR);
  end = BHND_PMU_READ_4(sc, BHND_PMU_TIMER);
  delta = end - start;
  sc->ilp_cps = delta * (1000 / ILP_CALC_DUR);
 }

 return (sc->ilp_cps);
}
