
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pmu_query {int dummy; } ;


 int BHND_PMU1_PLL0_PC0_P1DIV ;
 int BHND_PMU1_PLL0_PC0_P2DIV ;
 int BHND_PMU1_PLL0_PC1_M1DIV ;
 int BHND_PMU1_PLL0_PC2_NDIV_INT ;
 int BHND_PMU1_PLL0_PC3_NDIV_FRAC ;
 int BHND_PMU1_PLL0_PLLCTL0 ;
 int BHND_PMU1_PLL0_PLLCTL1 ;
 int BHND_PMU1_PLL0_PLLCTL2 ;
 int BHND_PMU1_PLL0_PLLCTL3 ;
 int BHND_PMU_GET_BITS (int,int ) ;
 int BHND_PMU_PLL_READ (struct bhnd_pmu_query*,int ) ;
 int PMU_DEBUG (struct bhnd_pmu_query*,char*,int,int,int,int,int) ;
 int bhnd_pmu1_alpclk0 (struct bhnd_pmu_query*) ;
 int bhnd_pmu1_pllfvco0 (struct bhnd_pmu_query*) ;

__attribute__((used)) static uint32_t
bhnd_pmu1_cpuclk0(struct bhnd_pmu_query *sc)
{
 uint32_t tmp, m1div;




 uint32_t FVCO = bhnd_pmu1_pllfvco0(sc);


 tmp = BHND_PMU_PLL_READ(sc, BHND_PMU1_PLL0_PLLCTL1);
 m1div = BHND_PMU_GET_BITS(tmp, BHND_PMU1_PLL0_PC1_M1DIV);
 return (FVCO / m1div * 1000);
}
