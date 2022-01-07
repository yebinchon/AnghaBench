
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SPR_PMC1 ;
 int SPR_PMC2 ;
 int SPR_PMC3 ;
 int SPR_PMC4 ;
 int SPR_PMC5 ;
 int SPR_PMC6 ;
 int mtspr (int ,int ) ;
 int panic (char*,unsigned int) ;

__attribute__((used)) static void
mpc7xxx_pmcn_write(unsigned int pmc, uint32_t val)
{
 switch (pmc) {
  case 0:
   mtspr(SPR_PMC1, val);
   break;
  case 1:
   mtspr(SPR_PMC2, val);
   break;
  case 2:
   mtspr(SPR_PMC3, val);
   break;
  case 3:
   mtspr(SPR_PMC4, val);
   break;
  case 4:
   mtspr(SPR_PMC5, val);
   break;
  case 5:
   mtspr(SPR_PMC6, val);
   break;
  default:
   panic("Invalid PMC number: %d\n", pmc);
 }
}
