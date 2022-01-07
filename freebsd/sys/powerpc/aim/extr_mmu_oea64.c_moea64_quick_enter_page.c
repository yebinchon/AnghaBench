
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
typedef struct pvo_entry* vm_offset_t ;
typedef int uint64_t ;
struct TYPE_3__ {int pa; } ;
struct pvo_entry {TYPE_1__ pvo_pte; } ;
typedef int mmu_t ;
struct TYPE_4__ {int qmap_lock; int qmap_pvo; } ;


 int MA_NOTOWNED ;
 int MOEA64_PTE_INVALIDATE ;
 int MOEA64_PTE_REPLACE (int ,struct pvo_entry*,int ) ;
 struct pvo_entry* PCPU_GET (int ) ;
 int PCPU_PTR (int ) ;
 struct pvo_entry* PHYS_TO_DMAP (scalar_t__) ;
 scalar_t__ VM_PAGE_TO_PHYS (int ) ;
 TYPE_2__ aim ;
 scalar_t__ hw_direct_map ;
 int isync () ;
 int moea64_calc_wimg (scalar_t__,int ) ;
 int mtx_assert (int ,int ) ;
 int mtx_lock (int ) ;
 int pmap_page_get_memattr (int ) ;
 int qmap_addr ;
 int sched_pin () ;

vm_offset_t
moea64_quick_enter_page(mmu_t mmu, vm_page_t m)
{
 struct pvo_entry *pvo;
 vm_paddr_t pa = VM_PAGE_TO_PHYS(m);

 if (hw_direct_map)
  return (PHYS_TO_DMAP(pa));







 sched_pin();

 mtx_assert(PCPU_PTR(aim.qmap_lock), MA_NOTOWNED);
 pvo = PCPU_GET(aim.qmap_pvo);

 mtx_lock(PCPU_PTR(aim.qmap_lock));
 pvo->pvo_pte.pa = moea64_calc_wimg(pa, pmap_page_get_memattr(m)) |
     (uint64_t)pa;
 MOEA64_PTE_REPLACE(mmu, pvo, MOEA64_PTE_INVALIDATE);
 isync();

 return (PCPU_GET(qmap_addr));
}
