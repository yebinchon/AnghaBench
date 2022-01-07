
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef int vm_object_t ;
struct TYPE_13__ {int flags; } ;


 int KASSERT (int,char*) ;
 int PGA_REFERENCED ;
 int PG_ZERO ;
 int VM_ALLOC_IGN_SBUSY ;
 int VM_ALLOC_NOBUSY ;
 int VM_ALLOC_NOCREAT ;
 int VM_ALLOC_NOWAIT ;
 int VM_ALLOC_SBUSY ;
 int VM_ALLOC_WAITFAIL ;
 int VM_ALLOC_WAITOK ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VM_OBJECT_ASSERT_WLOCKED (int ) ;
 int VM_OBJECT_WLOCK (int ) ;
 int pmap_zero_page (TYPE_1__*) ;
 int vm_page_aflag_set (TYPE_1__*,int ) ;
 TYPE_1__* vm_page_alloc (int ,int ,int) ;
 int vm_page_busy_sleep (TYPE_1__*,char*,int) ;
 TYPE_1__* vm_page_lookup (int ,int ) ;
 int vm_page_sunbusy (TYPE_1__*) ;
 int vm_page_trysbusy (TYPE_1__*) ;
 int vm_page_tryxbusy (TYPE_1__*) ;
 int vm_page_wire (TYPE_1__*) ;
 int vm_page_xunbusy (TYPE_1__*) ;

vm_page_t
vm_page_grab(vm_object_t object, vm_pindex_t pindex, int allocflags)
{
 vm_page_t m;
 int sleep;
 int pflags;

 VM_OBJECT_ASSERT_WLOCKED(object);
 KASSERT((allocflags & VM_ALLOC_SBUSY) == 0 ||
     (allocflags & VM_ALLOC_IGN_SBUSY) != 0,
     ("vm_page_grab: VM_ALLOC_SBUSY/VM_ALLOC_IGN_SBUSY mismatch"));
 pflags = allocflags &
     ~(VM_ALLOC_NOWAIT | VM_ALLOC_WAITOK | VM_ALLOC_WAITFAIL |
     VM_ALLOC_NOBUSY);
 if ((allocflags & VM_ALLOC_NOWAIT) == 0)
  pflags |= VM_ALLOC_WAITFAIL;
 if ((allocflags & VM_ALLOC_IGN_SBUSY) != 0)
  pflags |= VM_ALLOC_SBUSY;
retrylookup:
 if ((m = vm_page_lookup(object, pindex)) != ((void*)0)) {
  if ((allocflags & (VM_ALLOC_IGN_SBUSY | VM_ALLOC_SBUSY)) != 0)
   sleep = !vm_page_trysbusy(m);
  else
   sleep = !vm_page_tryxbusy(m);
  if (sleep) {
   if ((allocflags & VM_ALLOC_NOWAIT) != 0)
    return (((void*)0));





   if ((allocflags & VM_ALLOC_NOCREAT) == 0)
    vm_page_aflag_set(m, PGA_REFERENCED);
   vm_page_busy_sleep(m, "pgrbwt", (allocflags &
       VM_ALLOC_IGN_SBUSY) != 0);
   VM_OBJECT_WLOCK(object);
   if ((allocflags & VM_ALLOC_WAITFAIL) != 0)
    return (((void*)0));
   goto retrylookup;
  } else {
   if ((allocflags & VM_ALLOC_WIRED) != 0)
    vm_page_wire(m);
   goto out;
  }
 }
 if ((allocflags & VM_ALLOC_NOCREAT) != 0)
  return (((void*)0));
 m = vm_page_alloc(object, pindex, pflags);
 if (m == ((void*)0)) {
  if ((allocflags & VM_ALLOC_NOWAIT) != 0)
   return (((void*)0));
  goto retrylookup;
 }
 if (allocflags & VM_ALLOC_ZERO && (m->flags & PG_ZERO) == 0)
  pmap_zero_page(m);

out:
 if ((allocflags & VM_ALLOC_NOBUSY) != 0) {
  if ((allocflags & VM_ALLOC_IGN_SBUSY) != 0)
   vm_page_sunbusy(m);
  else
   vm_page_xunbusy(m);
 }
 return (m);
}
