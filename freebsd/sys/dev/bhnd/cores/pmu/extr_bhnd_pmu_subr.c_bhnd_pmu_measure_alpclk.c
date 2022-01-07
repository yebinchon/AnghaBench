
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pmu_softc {int dummy; } ;


 int BHND_PMU_GET_BITS (int,int ) ;
 int BHND_PMU_READ_4 (struct bhnd_pmu_softc*,int ) ;
 int BHND_PMU_REV (struct bhnd_pmu_softc*) ;
 int BHND_PMU_ST ;
 int BHND_PMU_ST_EXTLPOAVAIL ;
 int BHND_PMU_WRITE_4 (struct bhnd_pmu_softc*,int ,unsigned int) ;
 int BHND_PMU_XTALFREQ ;
 int BHND_PMU_XTALFREQ_REG_ILPCTR ;
 unsigned int BHND_PMU_XTALFREQ_REG_MEASURE_SHIFT ;
 int DELAY (int) ;
 int EXT_ILP_HZ ;

uint32_t
bhnd_pmu_measure_alpclk(struct bhnd_pmu_softc *sc)
{
 uint32_t alp_khz;
 uint32_t pmu_st;

 if (BHND_PMU_REV(sc) < 10)
  return (0);

 pmu_st = BHND_PMU_READ_4(sc, BHND_PMU_ST);
 if (pmu_st & BHND_PMU_ST_EXTLPOAVAIL) {
  uint32_t alp_hz, ilp_ctr;


  BHND_PMU_WRITE_4(sc, BHND_PMU_XTALFREQ, 1U <<
      BHND_PMU_XTALFREQ_REG_MEASURE_SHIFT);


  DELAY(1000);


  ilp_ctr = BHND_PMU_READ_4(sc, BHND_PMU_XTALFREQ);
  ilp_ctr = BHND_PMU_GET_BITS(ilp_ctr,
      BHND_PMU_XTALFREQ_REG_ILPCTR);


  BHND_PMU_WRITE_4(sc, BHND_PMU_XTALFREQ, 0);


  alp_hz = (ilp_ctr * EXT_ILP_HZ) / 4;


  alp_khz = (alp_hz + 50000) / 100000 * 100;
 } else {
  alp_khz = 0;
 }

 return (alp_khz);
}
