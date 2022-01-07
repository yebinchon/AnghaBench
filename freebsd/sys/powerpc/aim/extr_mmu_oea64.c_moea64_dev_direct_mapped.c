
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
struct TYPE_5__ {int pa; } ;
struct pvo_entry {TYPE_1__ pvo_pte; scalar_t__ pvo_vaddr; } ;
typedef int mmu_t ;
typedef int boolean_t ;
struct TYPE_6__ {int pmap_pvo; } ;


 int ADDR_POFF ;
 scalar_t__ DMAP_BASE_ADDRESS ;
 int EFAULT ;
 int LPTE_RPGN ;
 scalar_t__ PAGE_SIZE ;
 int PMAP_LOCK (TYPE_2__*) ;
 int PMAP_UNLOCK (TYPE_2__*) ;
 struct pvo_entry* RB_FIND (int ,int *,struct pvo_entry*) ;
 struct pvo_entry* RB_NEXT (int ,int *,struct pvo_entry*) ;
 scalar_t__ hw_direct_map ;
 TYPE_2__* kernel_pmap ;
 scalar_t__ mem_valid (int,int) ;
 int pvo_tree ;

boolean_t
moea64_dev_direct_mapped(mmu_t mmu, vm_paddr_t pa, vm_size_t size)
{
 struct pvo_entry *pvo, key;
 vm_offset_t ppa;
 int error = 0;

 if (hw_direct_map && mem_valid(pa, size) == 0)
  return (0);

 PMAP_LOCK(kernel_pmap);
 ppa = pa & ~ADDR_POFF;
 key.pvo_vaddr = DMAP_BASE_ADDRESS + ppa;
 for (pvo = RB_FIND(pvo_tree, &kernel_pmap->pmap_pvo, &key);
     ppa < pa + size; ppa += PAGE_SIZE,
     pvo = RB_NEXT(pvo_tree, &kernel_pmap->pmap_pvo, pvo)) {
  if (pvo == ((void*)0) || (pvo->pvo_pte.pa & LPTE_RPGN) != ppa) {
   error = EFAULT;
   break;
  }
 }
 PMAP_UNLOCK(kernel_pmap);

 return (error);
}
