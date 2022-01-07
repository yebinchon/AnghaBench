
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
struct TYPE_3__ {int pte_lo; } ;
struct TYPE_4__ {TYPE_1__ pte; } ;
struct pvo_entry {TYPE_2__ pvo_pte; } ;
typedef int pmap_t ;
typedef int mmu_t ;


 int ADDR_POFF ;
 scalar_t__ MIN (int,scalar_t__) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PTE_RPGN ;
 struct pvo_entry* moea_pvo_find_va (int ,int,int *) ;
 int moea_syncicache (int,scalar_t__) ;
 int round_page (int) ;

__attribute__((used)) static void
moea_sync_icache(mmu_t mmu, pmap_t pm, vm_offset_t va, vm_size_t sz)
{
 struct pvo_entry *pvo;
 vm_offset_t lim;
 vm_paddr_t pa;
 vm_size_t len;

 PMAP_LOCK(pm);
 while (sz > 0) {
  lim = round_page(va);
  len = MIN(lim - va, sz);
  pvo = moea_pvo_find_va(pm, va & ~ADDR_POFF, ((void*)0));
  if (pvo != ((void*)0)) {
   pa = (pvo->pvo_pte.pte.pte_lo & PTE_RPGN) |
       (va & ADDR_POFF);
   moea_syncicache(pa, len);
  }
  va += len;
  sz -= len;
 }
 PMAP_UNLOCK(pm);
}
