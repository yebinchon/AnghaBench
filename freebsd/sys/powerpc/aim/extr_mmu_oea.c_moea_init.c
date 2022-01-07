
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvo_entry {int dummy; } ;
typedef int mmu_t ;


 int TRUE ;
 int UMA_ALIGN_PTR ;
 int UMA_ZONE_NOFREE ;
 int UMA_ZONE_VM ;
 int moea_initialized ;
 void* moea_mpvo_zone ;
 void* moea_upvo_zone ;
 void* uma_zcreate (char*,int,int *,int *,int *,int *,int ,int) ;

void
moea_init(mmu_t mmu)
{

 moea_upvo_zone = uma_zcreate("UPVO entry", sizeof (struct pvo_entry),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR,
     UMA_ZONE_VM | UMA_ZONE_NOFREE);
 moea_mpvo_zone = uma_zcreate("MPVO entry", sizeof(struct pvo_entry),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR,
     UMA_ZONE_VM | UMA_ZONE_NOFREE);
 moea_initialized = TRUE;
}
