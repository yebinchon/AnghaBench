
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef TYPE_3__* vm_page_t ;
typedef int vm_offset_t ;
typedef int uint64_t ;
typedef int u_int ;
struct pvo_head {int dummy; } ;
struct TYPE_12__ {int prot; int pa; } ;
struct pvo_entry {scalar_t__ pvo_pmap; TYPE_2__ pvo_pte; int pvo_vaddr; } ;
typedef scalar_t__ pmap_t ;
typedef int mmu_t ;
typedef int int8_t ;
struct TYPE_11__ {struct pvo_head mdpg_pvoh; } ;
struct TYPE_13__ {int oflags; int aflags; TYPE_1__ md; int object; } ;


 int EEXIST ;
 int KASSERT (int,char*) ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int LPTE_G ;
 int LPTE_I ;
 int LPTE_NOEXEC ;
 int MOEA64_PTE_INSERT (int ,struct pvo_entry*) ;
 scalar_t__ MOEA64_PTE_SYNCH (int ,struct pvo_entry*) ;
 int PAGE_SIZE ;
 int PGA_EXECUTABLE ;
 int PGA_WRITEABLE ;
 int PMAP_ENTER_QUICK_LOCKED ;
 int PMAP_ENTER_WIRED ;
 int PMAP_LOCK (scalar_t__) ;
 int PMAP_UNLOCK (scalar_t__) ;
 int PVO_MANAGED ;
 int PVO_WIRED ;
 int PV_PAGE_LOCK (TYPE_3__*) ;
 int PV_PAGE_UNLOCK (TYPE_3__*) ;
 int STAT_MOEA64 (int ) ;
 int VM_OBJECT_ASSERT_LOCKED (int ) ;
 int VM_PAGE_OBJECT_BUSY_ASSERT (TYPE_3__*) ;
 int VM_PAGE_TO_PHYS (TYPE_3__*) ;
 int VM_PROT_WRITE ;
 int VPO_UNMANAGED ;
 struct pvo_entry* alloc_pvo_entry (int ) ;
 int free_pvo_entry (struct pvo_entry*) ;
 int init_pvo_entry (struct pvo_entry*,scalar_t__,int ) ;
 scalar_t__ kernel_pmap ;
 int moea64_calc_wimg (int,int ) ;
 int moea64_initialized ;
 int moea64_pte_overflow ;
 int moea64_pvo_enter (int ,struct pvo_entry*,struct pvo_head*,struct pvo_entry**) ;
 int moea64_pvo_remove_from_page (int ,struct pvo_entry*) ;
 int moea64_pvo_remove_from_pmap (int ,struct pvo_entry*) ;
 int moea64_syncicache (int ,scalar_t__,int ,int,int ) ;
 scalar_t__ pmap_bootstrapped ;
 int pmap_page_get_memattr (TYPE_3__*) ;
 int vm_page_aflag_set (TYPE_3__*,int) ;

int
moea64_enter(mmu_t mmu, pmap_t pmap, vm_offset_t va, vm_page_t m,
    vm_prot_t prot, u_int flags, int8_t psind)
{
 struct pvo_entry *pvo, *oldpvo;
 struct pvo_head *pvo_head;
 uint64_t pte_lo;
 int error;

 if ((m->oflags & VPO_UNMANAGED) == 0) {
  if ((flags & PMAP_ENTER_QUICK_LOCKED) == 0)
   VM_PAGE_OBJECT_BUSY_ASSERT(m);
  else
   VM_OBJECT_ASSERT_LOCKED(m->object);
 }

 pvo = alloc_pvo_entry(0);
 if (pvo == ((void*)0))
  return (KERN_RESOURCE_SHORTAGE);
 pvo->pvo_pmap = ((void*)0);
 pvo->pvo_pte.prot = prot;

 pte_lo = moea64_calc_wimg(VM_PAGE_TO_PHYS(m), pmap_page_get_memattr(m));
 pvo->pvo_pte.pa = VM_PAGE_TO_PHYS(m) | pte_lo;

 if ((flags & PMAP_ENTER_WIRED) != 0)
  pvo->pvo_vaddr |= PVO_WIRED;

 if ((m->oflags & VPO_UNMANAGED) != 0 || !moea64_initialized) {
  pvo_head = ((void*)0);
 } else {
  pvo_head = &m->md.mdpg_pvoh;
  pvo->pvo_vaddr |= PVO_MANAGED;
 }

 PV_PAGE_LOCK(m);
 PMAP_LOCK(pmap);
 if (pvo->pvo_pmap == ((void*)0))
  init_pvo_entry(pvo, pmap, va);
 if (prot & VM_PROT_WRITE)
  if (pmap_bootstrapped &&
      (m->oflags & VPO_UNMANAGED) == 0)
   vm_page_aflag_set(m, PGA_WRITEABLE);

 error = moea64_pvo_enter(mmu, pvo, pvo_head, &oldpvo);
 if (error == EEXIST) {
  if (oldpvo->pvo_vaddr == pvo->pvo_vaddr &&
      oldpvo->pvo_pte.pa == pvo->pvo_pte.pa &&
      oldpvo->pvo_pte.prot == prot) {

   error = 0;


   if (MOEA64_PTE_SYNCH(mmu, oldpvo) < 0) {
    STAT_MOEA64(moea64_pte_overflow--);
    MOEA64_PTE_INSERT(mmu, oldpvo);
   }


   PV_PAGE_UNLOCK(m);
   PMAP_UNLOCK(pmap);
   free_pvo_entry(pvo);
   goto out;
  } else {

   KASSERT(oldpvo->pvo_pmap == pmap, ("pmap of old "
       "mapping does not match new mapping"));
   moea64_pvo_remove_from_pmap(mmu, oldpvo);
   moea64_pvo_enter(mmu, pvo, pvo_head, ((void*)0));
  }
 }
 PMAP_UNLOCK(pmap);
 PV_PAGE_UNLOCK(m);


 if (error == EEXIST) {
  moea64_pvo_remove_from_page(mmu, oldpvo);
  free_pvo_entry(oldpvo);
 }

out:




 if (pmap != kernel_pmap && !(m->aflags & PGA_EXECUTABLE) &&
     (pte_lo & (LPTE_I | LPTE_G | LPTE_NOEXEC)) == 0) {
  vm_page_aflag_set(m, PGA_EXECUTABLE);
  moea64_syncicache(mmu, pmap, va, VM_PAGE_TO_PHYS(m), PAGE_SIZE);
 }
 return (KERN_SUCCESS);
}
