
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef void* vm_offset_t ;
typedef int uint32_t ;


 int MAS0_ESEL (int ) ;
 int MAS0_TLBSEL (int) ;
 int MAS1_TSIZE_MASK ;
 int MAS1_TSIZE_SHIFT ;
 int MAS3_RPN ;
 int MAS7_RPN ;
 int SPR_MAS0 ;
 int SPR_MAS1 ;
 int SPR_MAS2 ;
 int SPR_MAS3 ;
 int SPR_MAS7 ;
 int kernload ;
 int kernsize ;
 int kernstart ;
 void* mfspr (int ) ;
 int mtspr (int ,int) ;
 int set_mas4_defaults () ;
 int tlb1_get_tlbconf () ;
 int trunc_page (void*) ;
 int tsize2size (int) ;

void
tlb1_init()
{
 vm_offset_t mas2;
 uint32_t mas0, mas1, mas3, mas7;
 uint32_t tsz;

 tlb1_get_tlbconf();

 mas0 = MAS0_TLBSEL(1) | MAS0_ESEL(0);
 mtspr(SPR_MAS0, mas0);
 __asm __volatile("isync; tlbre");

 mas1 = mfspr(SPR_MAS1);
 mas2 = mfspr(SPR_MAS2);
 mas3 = mfspr(SPR_MAS3);
 mas7 = mfspr(SPR_MAS7);

 kernload = ((vm_paddr_t)(mas7 & MAS7_RPN) << 32) |
     (mas3 & MAS3_RPN);

 tsz = (mas1 & MAS1_TSIZE_MASK) >> MAS1_TSIZE_SHIFT;
 kernsize += (tsz > 0) ? tsize2size(tsz) : 0;
 kernstart = trunc_page(mas2);


 set_mas4_defaults();
}
