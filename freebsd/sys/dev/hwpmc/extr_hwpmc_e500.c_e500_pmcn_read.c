
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmc_value_t ;


 int PMR_PMC0 ;
 int PMR_PMC1 ;
 int PMR_PMC2 ;
 int PMR_PMC3 ;
 int mfpmr (int ) ;
 int panic (char*,unsigned int) ;

__attribute__((used)) static pmc_value_t
e500_pmcn_read(unsigned int pmc)
{
 switch (pmc) {
  case 0:
   return mfpmr(PMR_PMC0);
   break;
  case 1:
   return mfpmr(PMR_PMC1);
   break;
  case 2:
   return mfpmr(PMR_PMC2);
   break;
  case 3:
   return mfpmr(PMR_PMC3);
   break;
  default:
   panic("Invalid PMC number: %d\n", pmc);
 }
}
