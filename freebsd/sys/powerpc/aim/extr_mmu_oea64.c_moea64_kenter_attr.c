
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int vm_memattr_t ;
typedef int uintmax_t ;
struct TYPE_2__ {int prot; int pa; } ;
struct pvo_entry {int pvo_vaddr; TYPE_1__ pvo_pte; } ;
typedef int mmu_t ;


 int ADDR_POFF ;
 int ENOENT ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PVO_WIRED ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 struct pvo_entry* alloc_pvo_entry (int ) ;
 int free_pvo_entry (struct pvo_entry*) ;
 int init_pvo_entry (struct pvo_entry*,int ,int ) ;
 int kernel_pmap ;
 int moea64_calc_wimg (int,int ) ;
 int moea64_pvo_enter (int ,struct pvo_entry*,int *,int *) ;
 struct pvo_entry* moea64_pvo_find_va (int ,int ) ;
 int moea64_pvo_remove_from_page (int ,struct pvo_entry*) ;
 int moea64_pvo_remove_from_pmap (int ,struct pvo_entry*) ;
 int panic (char*,int ,int ,int) ;
 int vm_wait (int *) ;

void
moea64_kenter_attr(mmu_t mmu, vm_offset_t va, vm_paddr_t pa, vm_memattr_t ma)
{
 int error;
 struct pvo_entry *pvo, *oldpvo;

 do {
  pvo = alloc_pvo_entry(0);
  if (pvo == ((void*)0))
   vm_wait(((void*)0));
 } while (pvo == ((void*)0));
 pvo->pvo_pte.prot = VM_PROT_READ | VM_PROT_WRITE | VM_PROT_EXECUTE;
 pvo->pvo_pte.pa = (pa & ~ADDR_POFF) | moea64_calc_wimg(pa, ma);
 pvo->pvo_vaddr |= PVO_WIRED;

 PMAP_LOCK(kernel_pmap);
 oldpvo = moea64_pvo_find_va(kernel_pmap, va);
 if (oldpvo != ((void*)0))
  moea64_pvo_remove_from_pmap(mmu, oldpvo);
 init_pvo_entry(pvo, kernel_pmap, va);
 error = moea64_pvo_enter(mmu, pvo, ((void*)0), ((void*)0));
 PMAP_UNLOCK(kernel_pmap);


 if (oldpvo != ((void*)0)) {
  moea64_pvo_remove_from_page(mmu, oldpvo);
  free_pvo_entry(oldpvo);
 }

 if (error != 0 && error != ENOENT)
  panic("moea64_kenter: failed to enter va %#zx pa %#jx: %d", va,
      (uintmax_t)pa, error);
}
