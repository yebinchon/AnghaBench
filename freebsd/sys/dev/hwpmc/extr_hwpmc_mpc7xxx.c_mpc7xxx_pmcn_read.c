
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmc_value_t ;


 int SPR_PMC1 ;
 int SPR_PMC2 ;
 int SPR_PMC3 ;
 int SPR_PMC4 ;
 int SPR_PMC5 ;
 int SPR_PMC6 ;
 int mfspr (int ) ;
 int panic (char*,unsigned int) ;

__attribute__((used)) static pmc_value_t
mpc7xxx_pmcn_read(unsigned int pmc)
{
 switch (pmc) {
  case 0:
   return mfspr(SPR_PMC1);
   break;
  case 1:
   return mfspr(SPR_PMC2);
   break;
  case 2:
   return mfspr(SPR_PMC3);
   break;
  case 3:
   return mfspr(SPR_PMC4);
   break;
  case 4:
   return mfspr(SPR_PMC5);
   break;
  case 5:
   return mfspr(SPR_PMC6);
  default:
   panic("Invalid PMC number: %d\n", pmc);
 }
}
