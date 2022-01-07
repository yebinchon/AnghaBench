
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct vm_domain {scalar_t__ vmd_interrupt_free_min; scalar_t__ vmd_free_reserved; scalar_t__ vmd_free_count; scalar_t__ vmd_free_min; scalar_t__ vmd_free_severe; int vmd_domain; } ;


 int VM_ALLOC_CLASS_MASK ;
 int VM_ALLOC_INTERRUPT ;
 int VM_ALLOC_SYSTEM ;
 scalar_t__ atomic_fcmpset_int (scalar_t__*,scalar_t__*,scalar_t__) ;
 scalar_t__ curproc ;
 int pagedaemon_wakeup (int ) ;
 scalar_t__ pageproc ;
 int vm_domain_set (struct vm_domain*) ;
 scalar_t__ vm_paging_needed (struct vm_domain*,scalar_t__) ;

int
vm_domain_allocate(struct vm_domain *vmd, int req, int npages)
{
 u_int limit, old, new;

 req = req & VM_ALLOC_CLASS_MASK;




 if (curproc == pageproc && req != VM_ALLOC_INTERRUPT)
  req = VM_ALLOC_SYSTEM;
 if (req == VM_ALLOC_INTERRUPT)
  limit = 0;
 else if (req == VM_ALLOC_SYSTEM)
  limit = vmd->vmd_interrupt_free_min;
 else
  limit = vmd->vmd_free_reserved;




 limit += npages;
 old = vmd->vmd_free_count;
 do {
  if (old < limit)
   return (0);
  new = old - npages;
 } while (atomic_fcmpset_int(&vmd->vmd_free_count, &old, new) == 0);


 if (vm_paging_needed(vmd, new) && !vm_paging_needed(vmd, old))
  pagedaemon_wakeup(vmd->vmd_domain);


 if ((old >= vmd->vmd_free_min && new < vmd->vmd_free_min) ||
     (old >= vmd->vmd_free_severe && new < vmd->vmd_free_severe))
  vm_domain_set(vmd);

 return (1);
}
