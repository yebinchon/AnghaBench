
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vmem_t ;
typedef scalar_t__ vm_size_t ;
typedef TYPE_1__* vm_page_t ;
typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_object_t ;
typedef int vm_memattr_t ;
typedef int u_long ;
struct TYPE_8__ {int * vmd_kernel_arena; } ;
struct TYPE_7__ {int flags; int valid; } ;


 int KASSERT (int,char*) ;
 int M_BESTFIT ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ PAGE_SIZE ;
 int PG_ZERO ;
 int PMAP_ENTER_WIRED ;
 int VM_ALLOC_NOBUSY ;
 int VM_ALLOC_NOWAIT ;
 int VM_ALLOC_WAITFAIL ;
 int VM_ALLOC_WAITOK ;
 int VM_ALLOC_WIRED ;
 scalar_t__ VM_MIN_KERNEL_ADDRESS ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int VM_PAGE_BITS_ALL ;
 int VM_PROT_RW ;
 int atop (scalar_t__) ;
 int kernel_object ;
 int kernel_pmap ;
 int malloc2vm_flags (int) ;
 int pmap_enter (int ,scalar_t__,TYPE_1__*,int,int,int ) ;
 int pmap_zero_page (TYPE_1__*) ;
 scalar_t__ round_page (scalar_t__) ;
 TYPE_4__* vm_dom ;
 TYPE_1__* vm_page_alloc_contig_domain (int ,int,int,int,int,int ,int ,int,int ,int ) ;
 int vm_page_reclaim_contig_domain (int,int,int,int ,int ,int,int ) ;
 int vm_phys_domain (TYPE_1__*) ;
 int vm_wait_domain (int) ;
 scalar_t__ vmem_alloc (int *,scalar_t__,int,scalar_t__*) ;
 int vmem_free (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static vm_offset_t
kmem_alloc_contig_domain(int domain, vm_size_t size, int flags, vm_paddr_t low,
    vm_paddr_t high, u_long alignment, vm_paddr_t boundary,
    vm_memattr_t memattr)
{
 vmem_t *vmem;
 vm_object_t object = kernel_object;
 vm_offset_t addr, offset, tmp;
 vm_page_t end_m, m;
 u_long npages;
 int pflags, tries;

 size = round_page(size);
 vmem = vm_dom[domain].vmd_kernel_arena;
 if (vmem_alloc(vmem, size, flags | M_BESTFIT, &addr))
  return (0);
 offset = addr - VM_MIN_KERNEL_ADDRESS;
 pflags = malloc2vm_flags(flags) | VM_ALLOC_NOBUSY | VM_ALLOC_WIRED;
 pflags &= ~(VM_ALLOC_NOWAIT | VM_ALLOC_WAITOK | VM_ALLOC_WAITFAIL);
 pflags |= VM_ALLOC_NOWAIT;
 npages = atop(size);
 VM_OBJECT_WLOCK(object);
 tries = 0;
retry:
 m = vm_page_alloc_contig_domain(object, atop(offset), domain, pflags,
     npages, low, high, alignment, boundary, memattr);
 if (m == ((void*)0)) {
  VM_OBJECT_WUNLOCK(object);
  if (tries < ((flags & M_NOWAIT) != 0 ? 1 : 3)) {
   if (!vm_page_reclaim_contig_domain(domain, pflags,
       npages, low, high, alignment, boundary) &&
       (flags & M_WAITOK) != 0)
    vm_wait_domain(domain);
   VM_OBJECT_WLOCK(object);
   tries++;
   goto retry;
  }
  vmem_free(vmem, addr, size);
  return (0);
 }
 KASSERT(vm_phys_domain(m) == domain,
     ("kmem_alloc_contig_domain: Domain mismatch %d != %d",
     vm_phys_domain(m), domain));
 end_m = m + npages;
 tmp = addr;
 for (; m < end_m; m++) {
  if ((flags & M_ZERO) && (m->flags & PG_ZERO) == 0)
   pmap_zero_page(m);
  m->valid = VM_PAGE_BITS_ALL;
  pmap_enter(kernel_pmap, tmp, m, VM_PROT_RW,
      VM_PROT_RW | PMAP_ENTER_WIRED, 0);
  tmp += PAGE_SIZE;
 }
 VM_OBJECT_WUNLOCK(object);
 return (addr);
}
