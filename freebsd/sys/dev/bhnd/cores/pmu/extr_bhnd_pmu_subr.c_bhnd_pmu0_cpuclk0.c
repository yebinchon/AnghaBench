
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_pmu_query {int dummy; } ;


 int BHND_PMU0_PLL0_PC0_DIV_ARM ;
 int BHND_PMU0_PLL0_PC0_DIV_ARM_BASE ;
 int BHND_PMU0_PLL0_PC0_PDIV_MASK ;
 int BHND_PMU0_PLL0_PC1_WILD_FRAC ;
 int BHND_PMU0_PLL0_PC2_WILD_INT ;
 int BHND_PMU0_PLL0_PLLCTL0 ;
 int BHND_PMU0_PLL0_PLLCTL1 ;
 int BHND_PMU0_PLL0_PLLCTL2 ;
 int BHND_PMU_GET_BITS (int,int ) ;
 int BHND_PMU_PLL_READ (struct bhnd_pmu_query*,int ) ;
 int FVCO_880 ;
 int PMU0_PLL0_PC1_WILD_INT ;
 int PMU_DEBUG (struct bhnd_pmu_query*,char*,int,int,int) ;
 int bhnd_pmu0_alpclk0 (int ,int ,int ) ;
 int cc ;
 int osh ;
 int sih ;

__attribute__((used)) static uint32_t
bhnd_pmu0_cpuclk0(struct bhnd_pmu_query *sc)
{
 uint32_t tmp, divarm;
 uint32_t FVCO;





 FVCO = FVCO_880;


 tmp = BHND_PMU_PLL_READ(sc, BHND_PMU0_PLL0_PLLCTL0);
 divarm = BHND_PMU_GET_BITS(tmp, BHND_PMU0_PLL0_PC0_DIV_ARM);
 return FVCO / (divarm + BHND_PMU0_PLL0_PC0_DIV_ARM_BASE) * 1000;
}
