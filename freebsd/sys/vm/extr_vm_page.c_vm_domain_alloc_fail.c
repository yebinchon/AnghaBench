
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_object_t ;
typedef int u_int ;
struct vm_domain {int vmd_domain; int vmd_pageout_deficit; } ;


 int EAGAIN ;
 int VM_ALLOC_COUNT_SHIFT ;
 int VM_ALLOC_WAITFAIL ;
 int VM_ALLOC_WAITOK ;
 int VM_OBJECT_WLOCK (int *) ;
 int VM_OBJECT_WUNLOCK (int *) ;
 int atomic_add_int (int *,int ) ;
 int max (int,int) ;
 int vm_domain_free_assert_unlocked (struct vm_domain*) ;
 int vm_wait_domain (int ) ;

__attribute__((used)) static int
vm_domain_alloc_fail(struct vm_domain *vmd, vm_object_t object, int req)
{

 vm_domain_free_assert_unlocked(vmd);

 atomic_add_int(&vmd->vmd_pageout_deficit,
     max((u_int)req >> VM_ALLOC_COUNT_SHIFT, 1));
 if (req & (VM_ALLOC_WAITOK | VM_ALLOC_WAITFAIL)) {
  if (object != ((void*)0))
   VM_OBJECT_WUNLOCK(object);
  vm_wait_domain(vmd->vmd_domain);
  if (object != ((void*)0))
   VM_OBJECT_WLOCK(object);
  if (req & VM_ALLOC_WAITOK)
   return (EAGAIN);
 }

 return (0);
}
