
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pmc_mdep {int dummy; } ;


 int ARMV7_PMNC_ENABLE ;
 int cp15_pmcnten_clr (int) ;
 int cp15_pmcr_get () ;
 int cp15_pmcr_set (int) ;
 int cp15_pminten_clr (int) ;
 int cp15_pmovsr_set (int) ;

__attribute__((used)) static int
armv7_pcpu_fini(struct pmc_mdep *md, int cpu)
{
 uint32_t pmnc;

 pmnc = cp15_pmcr_get();
 pmnc &= ~ARMV7_PMNC_ENABLE;
 cp15_pmcr_set(pmnc);

 pmnc = 0xffffffff;
 cp15_pmcnten_clr(pmnc);
 cp15_pminten_clr(pmnc);
 cp15_pmovsr_set(pmnc);

 return 0;
}
