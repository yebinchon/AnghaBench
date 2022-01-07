
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pv_entry {int dummy; } ;
typedef int mmu_t ;
struct TYPE_2__ {int v_page_count; } ;


 int PMAP_ROOT_SIZE ;
 int PMAP_SHPGPERPROC ;
 int PV_ENTRY_ZONE_MIN ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int UMA_ALIGN_CACHE ;
 int UMA_ALIGN_PTR ;
 int UMA_ZONE_NOFREE ;
 int UMA_ZONE_VM ;
 int maxproc ;
 int ptbl_init () ;
 void* ptbl_root_zone ;
 int pv_entry_high_water ;
 int pv_entry_max ;
 void* pvzone ;
 int uma_prealloc (void*,int ) ;
 void* uma_zcreate (char*,int,int *,int *,int *,int *,int ,int) ;
 int uma_zone_reserve_kva (void*,int) ;
 TYPE_1__ vm_cnt ;

__attribute__((used)) static void
mmu_booke_init(mmu_t mmu)
{
 int shpgperproc = PMAP_SHPGPERPROC;






 pvzone = uma_zcreate("PV ENTRY", sizeof(struct pv_entry), ((void*)0), ((void*)0),
     ((void*)0), ((void*)0), UMA_ALIGN_PTR, UMA_ZONE_VM | UMA_ZONE_NOFREE);

 TUNABLE_INT_FETCH("vm.pmap.shpgperproc", &shpgperproc);
 pv_entry_max = shpgperproc * maxproc + vm_cnt.v_page_count;

 TUNABLE_INT_FETCH("vm.pmap.pv_entries", &pv_entry_max);
 pv_entry_high_water = 9 * (pv_entry_max / 10);

 uma_zone_reserve_kva(pvzone, pv_entry_max);


 uma_prealloc(pvzone, PV_ENTRY_ZONE_MIN);


 ptbl_root_zone = uma_zcreate("pmap root", PMAP_ROOT_SIZE,
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_CACHE, UMA_ZONE_VM);


 ptbl_init();
}
