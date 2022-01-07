
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef scalar_t__ vm_pindex_t ;
typedef TYPE_2__* vm_page_t ;
typedef TYPE_3__* vm_object_t ;
typedef int uintmax_t ;
struct vm_domain {TYPE_1__* vmd_pgcache; } ;
struct TYPE_27__ {int flags; int memattr; } ;
struct TYPE_26__ {int flags; int ref_count; scalar_t__ pindex; void* busy_lock; void* oflags; int * object; scalar_t__ act_count; scalar_t__ aflags; } ;
struct TYPE_25__ {int * zone; } ;


 int KASSERT (int,char*) ;
 int M_NOWAIT ;
 int OBJ_FICTITIOUS ;
 int OBJ_UNMANAGED ;
 int PG_NODUMP ;
 int PG_PCPU_CACHE ;
 int PG_ZERO ;
 int VM_ALLOC_NOBUSY ;
 int VM_ALLOC_NODUMP ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_SBUSY ;
 int VM_ALLOC_WAITFAIL ;
 int VM_ALLOC_WAITOK ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 struct vm_domain* VM_DOMAIN (int) ;
 int VM_FREEPOOL_DEFAULT ;
 int VM_FREEPOOL_DIRECT ;
 int VM_MEMATTR_DEFAULT ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_3__*) ;
 int VM_OBJECT_WLOCK (TYPE_3__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_3__*) ;
 void* VPB_SHARERS_WORD (int) ;
 void* VPB_SINGLE_EXCLUSIVER ;
 void* VPB_UNBUSIED ;
 void* VPO_UNMANAGED ;
 int pmap_page_set_memattr (TYPE_2__*,int ) ;
 TYPE_2__* uma_zalloc (int *,int ) ;
 scalar_t__ vm_domain_alloc_fail (struct vm_domain*,TYPE_3__*,int) ;
 scalar_t__ vm_domain_allocate (struct vm_domain*,int,int) ;
 int vm_domain_free_lock (struct vm_domain*) ;
 int vm_domain_free_unlock (struct vm_domain*) ;
 int vm_domain_freecnt_inc (struct vm_domain*,int) ;
 scalar_t__ vm_object_reserv (TYPE_3__*) ;
 int vm_page_alloc_check (TYPE_2__*) ;
 int vm_page_dequeue (TYPE_2__*) ;
 int vm_page_free_toq (TYPE_2__*) ;
 scalar_t__ vm_page_insert_after (TYPE_2__*,TYPE_3__*,scalar_t__,TYPE_2__*) ;
 TYPE_2__* vm_phys_alloc_pages (int,int,int ) ;
 int vm_phys_domain (TYPE_2__*) ;
 int vm_radix_wait () ;
 TYPE_2__* vm_reserv_alloc_page (TYPE_3__*,scalar_t__,int,int,TYPE_2__*) ;
 scalar_t__ vm_reserv_reclaim_inactive (int) ;
 int vm_wire_add (int) ;
 int vm_wire_sub (int) ;

vm_page_t
vm_page_alloc_domain_after(vm_object_t object, vm_pindex_t pindex, int domain,
    int req, vm_page_t mpred)
{
 struct vm_domain *vmd;
 vm_page_t m;
 int flags, pool;

 KASSERT((object != ((void*)0)) == ((req & VM_ALLOC_NOOBJ) == 0) &&
     (object != ((void*)0) || (req & VM_ALLOC_SBUSY) == 0) &&
     ((req & (VM_ALLOC_NOBUSY | VM_ALLOC_SBUSY)) !=
     (VM_ALLOC_NOBUSY | VM_ALLOC_SBUSY)),
     ("inconsistent object(%p)/req(%x)", object, req));
 KASSERT(object == ((void*)0) || (req & VM_ALLOC_WAITOK) == 0,
     ("Can't sleep and retry object insertion."));
 KASSERT(mpred == ((void*)0) || mpred->pindex < pindex,
     ("mpred %p doesn't precede pindex 0x%jx", mpred,
     (uintmax_t)pindex));
 if (object != ((void*)0))
  VM_OBJECT_ASSERT_WLOCKED(object);

 flags = 0;
 m = ((void*)0);
 pool = object != ((void*)0) ? VM_FREEPOOL_DEFAULT : VM_FREEPOOL_DIRECT;
again:
 vmd = VM_DOMAIN(domain);
 if (vmd->vmd_pgcache[pool].zone != ((void*)0)) {
  m = uma_zalloc(vmd->vmd_pgcache[pool].zone, M_NOWAIT);
  if (m != ((void*)0)) {
   flags |= PG_PCPU_CACHE;
   goto found;
  }
 }
 if (vm_domain_allocate(vmd, req, 1)) {



  vm_domain_free_lock(vmd);
  m = vm_phys_alloc_pages(domain, pool, 0);
  vm_domain_free_unlock(vmd);
  if (m == ((void*)0)) {
   vm_domain_freecnt_inc(vmd, 1);




  }
 }
 if (m == ((void*)0)) {



  if (vm_domain_alloc_fail(vmd, object, req))
   goto again;
  return (((void*)0));
 }




found:
 vm_page_dequeue(m);
 vm_page_alloc_check(m);




 if ((req & VM_ALLOC_ZERO) != 0)
  flags |= (m->flags & PG_ZERO);
 if ((req & VM_ALLOC_NODUMP) != 0)
  flags |= PG_NODUMP;
 m->flags = flags;
 m->aflags = 0;
 m->oflags = object == ((void*)0) || (object->flags & OBJ_UNMANAGED) != 0 ?
     VPO_UNMANAGED : 0;
 m->busy_lock = VPB_UNBUSIED;
 if ((req & (VM_ALLOC_NOBUSY | VM_ALLOC_NOOBJ | VM_ALLOC_SBUSY)) == 0)
  m->busy_lock = VPB_SINGLE_EXCLUSIVER;
 if ((req & VM_ALLOC_SBUSY) != 0)
  m->busy_lock = VPB_SHARERS_WORD(1);
 if (req & VM_ALLOC_WIRED) {




  vm_wire_add(1);
  m->ref_count = 1;
 }
 m->act_count = 0;

 if (object != ((void*)0)) {
  if (vm_page_insert_after(m, object, pindex, mpred)) {
   if (req & VM_ALLOC_WIRED) {
    vm_wire_sub(1);
    m->ref_count = 0;
   }
   KASSERT(m->object == ((void*)0), ("page %p has object", m));
   m->oflags = VPO_UNMANAGED;
   m->busy_lock = VPB_UNBUSIED;

   vm_page_free_toq(m);
   if (req & VM_ALLOC_WAITFAIL) {
    VM_OBJECT_WUNLOCK(object);
    vm_radix_wait();
    VM_OBJECT_WLOCK(object);
   }
   return (((void*)0));
  }


  if (object->memattr != VM_MEMATTR_DEFAULT &&
      (object->flags & OBJ_FICTITIOUS) == 0)
   pmap_page_set_memattr(m, object->memattr);
 } else
  m->pindex = pindex;

 return (m);
}
