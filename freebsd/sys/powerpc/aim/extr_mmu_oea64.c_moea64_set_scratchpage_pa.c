
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
typedef int uint64_t ;
struct TYPE_2__ {int pa; } ;
struct pvo_entry {int pvo_pmap; TYPE_1__ pvo_pte; } ;
typedef int mmu_t ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int MOEA64_PTE_INVALIDATE ;
 int MOEA64_PTE_REPLACE (int ,struct pvo_entry*,int ) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int VM_MEMATTR_DEFAULT ;
 int hw_direct_map ;
 int isync () ;
 int moea64_calc_wimg (scalar_t__,int ) ;
 int moea64_scratchpage_mtx ;
 struct pvo_entry** moea64_scratchpage_pvo ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static __inline
void moea64_set_scratchpage_pa(mmu_t mmup, int which, vm_paddr_t pa)
{
 struct pvo_entry *pvo;

 KASSERT(!hw_direct_map, ("Using OEA64 scratchpage with a direct map!"));
 mtx_assert(&moea64_scratchpage_mtx, MA_OWNED);

 pvo = moea64_scratchpage_pvo[which];
 PMAP_LOCK(pvo->pvo_pmap);
 pvo->pvo_pte.pa =
     moea64_calc_wimg(pa, VM_MEMATTR_DEFAULT) | (uint64_t)pa;
 MOEA64_PTE_REPLACE(mmup, pvo, MOEA64_PTE_INVALIDATE);
 PMAP_UNLOCK(pvo->pvo_pmap);
 isync();
}
