
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bhnd_pmu_softc {int dummy; } ;


 scalar_t__ BHND_PMU_READ_4 (struct bhnd_pmu_softc*,int ) ;
 int BHND_PMU_ST ;
 int DELAY (int) ;

uint32_t
bhnd_pmu_waitforclk_on_backplane(struct bhnd_pmu_softc *sc, uint32_t clk,
    uint32_t delay)
{
 uint32_t pmu_st;

 for (uint32_t i = 0; i < delay; i += 10) {
  pmu_st = BHND_PMU_READ_4(sc, BHND_PMU_ST);
  if ((pmu_st & clk) == clk)
   return (clk);

  DELAY(10);
 }

 pmu_st = BHND_PMU_READ_4(sc, BHND_PMU_ST);
 return (pmu_st & clk);
}
