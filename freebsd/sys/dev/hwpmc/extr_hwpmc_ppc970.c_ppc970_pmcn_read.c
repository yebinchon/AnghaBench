
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmc_value_t ;


 int SPR_970PMC1 ;
 int SPR_970PMC2 ;
 int SPR_970PMC3 ;
 int SPR_970PMC4 ;
 int SPR_970PMC5 ;
 int SPR_970PMC6 ;
 int SPR_970PMC7 ;
 int SPR_970PMC8 ;
 int mfspr (int ) ;
 int panic (char*,unsigned int) ;

__attribute__((used)) static pmc_value_t
ppc970_pmcn_read(unsigned int pmc)
{
 pmc_value_t val;

 switch (pmc) {
  case 0:
   val = mfspr(SPR_970PMC1);
   break;
  case 1:
   val = mfspr(SPR_970PMC2);
   break;
  case 2:
   val = mfspr(SPR_970PMC3);
   break;
  case 3:
   val = mfspr(SPR_970PMC4);
   break;
  case 4:
   val = mfspr(SPR_970PMC5);
   break;
  case 5:
   val = mfspr(SPR_970PMC6);
   break;
  case 6:
   val = mfspr(SPR_970PMC7);
   break;
  case 7:
   val = mfspr(SPR_970PMC8);
   break;
  default:
   panic("Invalid PMC number: %d\n", pmc);
 }

 return (val);
}
