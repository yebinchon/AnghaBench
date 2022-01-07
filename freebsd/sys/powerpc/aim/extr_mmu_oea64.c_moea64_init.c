
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvo_entry {int dummy; } ;
typedef int mmu_t ;


 int CTR0 (int ,char*) ;
 int KTR_PMAP ;
 int TRUE ;
 int UMA_ALIGN_PTR ;
 int UMA_ZONE_NOFREE ;
 int UMA_ZONE_VM ;
 int elf32_nxstack ;
 int hw_direct_map ;
 int installed_mmu ;
 int moea64_initialized ;
 int moea64_pvo_zone ;
 int moea64_uma_page_alloc ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int) ;
 int uma_zone_set_allocf (int ,int ) ;

void
moea64_init(mmu_t mmu)
{

 CTR0(KTR_PMAP, "moea64_init");

 moea64_pvo_zone = uma_zcreate("UPVO entry", sizeof (struct pvo_entry),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR,
     UMA_ZONE_VM | UMA_ZONE_NOFREE);

 if (!hw_direct_map) {
  installed_mmu = mmu;
  uma_zone_set_allocf(moea64_pvo_zone, moea64_uma_page_alloc);
 }





 moea64_initialized = TRUE;
}
