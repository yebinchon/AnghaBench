
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int u_int ;
struct vm_domain {int dummy; } ;
struct TYPE_6__ {int ref_count; int oflags; int flags; scalar_t__ aflags; } ;


 int PG_ZERO ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 struct vm_domain* VM_DOMAIN (int) ;
 int VM_FREEPOOL_DIRECT ;
 int VPO_UNMANAGED ;
 scalar_t__ vm_domain_alloc_fail (struct vm_domain*,int *,int) ;
 scalar_t__ vm_domain_allocate (struct vm_domain*,int,int) ;
 int vm_domain_free_lock (struct vm_domain*) ;
 int vm_domain_free_unlock (struct vm_domain*) ;
 int vm_domain_freecnt_inc (struct vm_domain*,int) ;
 int vm_page_alloc_check (TYPE_1__*) ;
 int vm_page_dequeue (TYPE_1__*) ;
 TYPE_1__* vm_phys_alloc_freelist_pages (int,int,int ,int ) ;
 int vm_wire_add (int) ;

vm_page_t
vm_page_alloc_freelist_domain(int domain, int freelist, int req)
{
 struct vm_domain *vmd;
 vm_page_t m;
 u_int flags;

 m = ((void*)0);
 vmd = VM_DOMAIN(domain);
again:
 if (vm_domain_allocate(vmd, req, 1)) {
  vm_domain_free_lock(vmd);
  m = vm_phys_alloc_freelist_pages(domain, freelist,
      VM_FREEPOOL_DIRECT, 0);
  vm_domain_free_unlock(vmd);
  if (m == ((void*)0))
   vm_domain_freecnt_inc(vmd, 1);
 }
 if (m == ((void*)0)) {
  if (vm_domain_alloc_fail(vmd, ((void*)0), req))
   goto again;
  return (((void*)0));
 }
 vm_page_dequeue(m);
 vm_page_alloc_check(m);




 m->aflags = 0;
 flags = 0;
 if ((req & VM_ALLOC_ZERO) != 0)
  flags = PG_ZERO;
 m->flags &= flags;
 if ((req & VM_ALLOC_WIRED) != 0) {




  vm_wire_add(1);
  m->ref_count = 1;
 }

 m->oflags = VPO_UNMANAGED;
 return (m);
}
