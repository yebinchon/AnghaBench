
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int PMR_PMC0 ;
 int PMR_PMC1 ;
 int PMR_PMC2 ;
 int PMR_PMC3 ;
 int mtpmr (int ,int ) ;
 int panic (char*,unsigned int) ;

__attribute__((used)) static void
e500_pmcn_write(unsigned int pmc, uint32_t val)
{
 switch (pmc) {
  case 0:
   mtpmr(PMR_PMC0, val);
   break;
  case 1:
   mtpmr(PMR_PMC1, val);
   break;
  case 2:
   mtpmr(PMR_PMC2, val);
   break;
  case 3:
   mtpmr(PMR_PMC3, val);
   break;
  default:
   panic("Invalid PMC number: %d\n", pmc);
 }
}
