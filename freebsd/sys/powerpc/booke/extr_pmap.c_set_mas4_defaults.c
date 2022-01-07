
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MAS4_MD ;
 int MAS4_TLBSELD0 ;
 int MAS4_TSIZED_MASK ;
 int MAS4_TSIZED_SHIFT ;
 int SPR_MAS4 ;
 int TLB_SIZE_4K ;
 int mtspr (int ,int) ;

__attribute__((used)) static void
set_mas4_defaults(void)
{
 uint32_t mas4;


 mas4 = MAS4_TLBSELD0;
 mas4 |= (TLB_SIZE_4K << MAS4_TSIZED_SHIFT) & MAS4_TSIZED_MASK;



 mtspr(SPR_MAS4, mas4);
 __asm __volatile("isync");
}
