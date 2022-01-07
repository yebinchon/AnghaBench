
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
struct TYPE_7__ {int pa; } ;
struct pvo_entry {TYPE_3__ pvo_pte; } ;
typedef int * pmap_t ;
typedef int mmu_t ;
struct TYPE_8__ {TYPE_2__* td_proc; } ;
struct TYPE_6__ {TYPE_1__* p_vmspace; } ;
struct TYPE_5__ {int vm_pmap; } ;


 int ADDR_POFF ;
 int LPTE_I ;
 int LPTE_RPGN ;
 scalar_t__ MIN (int,scalar_t__) ;
 int PMAP_LOCK (int *) ;
 int PMAP_UNLOCK (int *) ;
 scalar_t__ __predict_false (int ) ;
 TYPE_4__* curthread ;
 struct pvo_entry* moea64_pvo_find_va (int *,int) ;
 int moea64_syncicache (int ,int *,int,int,scalar_t__) ;
 int round_page (int) ;

void
moea64_sync_icache(mmu_t mmu, pmap_t pm, vm_offset_t va, vm_size_t sz)
{
 struct pvo_entry *pvo;
 vm_offset_t lim;
 vm_paddr_t pa;
 vm_size_t len;

 if (__predict_false(pm == ((void*)0)))
  pm = &curthread->td_proc->p_vmspace->vm_pmap;

 PMAP_LOCK(pm);
 while (sz > 0) {
  lim = round_page(va+1);
  len = MIN(lim - va, sz);
  pvo = moea64_pvo_find_va(pm, va & ~ADDR_POFF);
  if (pvo != ((void*)0) && !(pvo->pvo_pte.pa & LPTE_I)) {
   pa = (pvo->pvo_pte.pa & LPTE_RPGN) | (va & ADDR_POFF);
   moea64_syncicache(mmu, pm, va, pa, len);
  }
  va += len;
  sz -= len;
 }
 PMAP_UNLOCK(pm);
}
