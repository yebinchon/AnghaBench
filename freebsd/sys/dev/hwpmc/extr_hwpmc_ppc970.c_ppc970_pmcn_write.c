
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SPR_970PMC1 ;
 int SPR_970PMC2 ;
 int SPR_970PMC3 ;
 int SPR_970PMC4 ;
 int SPR_970PMC5 ;
 int SPR_970PMC6 ;
 int SPR_970PMC7 ;
 int SPR_970PMC8 ;
 int mtspr (int ,int ) ;
 int panic (char*,unsigned int) ;

__attribute__((used)) static void
ppc970_pmcn_write(unsigned int pmc, uint32_t val)
{
 switch (pmc) {
  case 0:
   mtspr(SPR_970PMC1, val);
   break;
  case 1:
   mtspr(SPR_970PMC2, val);
   break;
  case 2:
   mtspr(SPR_970PMC3, val);
   break;
  case 3:
   mtspr(SPR_970PMC4, val);
   break;
  case 4:
   mtspr(SPR_970PMC5, val);
   break;
  case 5:
   mtspr(SPR_970PMC6, val);
   break;
  case 6:
   mtspr(SPR_970PMC7, val);
   break;
  case 7:
   mtspr(SPR_970PMC8, val);
   break;
  default:
   panic("Invalid PMC number: %d\n", pmc);
 }
}
