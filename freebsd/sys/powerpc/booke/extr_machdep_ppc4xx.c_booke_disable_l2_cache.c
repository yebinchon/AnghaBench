
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CCR1_L2COBE ;
 int DCR_L2CR0 ;
 int DCR_L2DCDCRAI ;
 int DCR_L2DCDCRDI ;
 int L2CR0_AS ;
 int SPR_CCR1 ;
 int mfdcr (int ) ;
 int mfspr (int ) ;
 int mtdcr (int ,int ) ;
 int mtspr (int ,int ) ;

void
booke_disable_l2_cache(void)
{
 uint32_t ccr1,l2cr0;


 ccr1 = mfspr(SPR_CCR1);
 ccr1 &= ~CCR1_L2COBE;
 mtspr(SPR_CCR1, ccr1);


 mtdcr(DCR_L2DCDCRAI, DCR_L2CR0);
 l2cr0 = mfdcr(DCR_L2DCDCRDI);
 l2cr0 &= ~L2CR0_AS;
 mtdcr(DCR_L2DCDCRDI, l2cr0);
}
