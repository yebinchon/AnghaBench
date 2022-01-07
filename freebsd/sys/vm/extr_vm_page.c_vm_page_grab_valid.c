
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef int * vm_page_t ;
typedef int vm_object_t ;


 int KASSERT (int,char*) ;
 int MPASS (int) ;
 int PGA_REFERENCED ;
 int TRUE ;
 int VM_ALLOC_IGN_SBUSY ;
 int VM_ALLOC_NOBUSY ;
 int VM_ALLOC_NOCREAT ;
 int VM_ALLOC_NOWAIT ;
 int VM_ALLOC_SBUSY ;
 int VM_ALLOC_WAITFAIL ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VM_OBJECT_ASSERT_WLOCKED (int ) ;
 int VM_OBJECT_WLOCK (int ) ;
 int VM_PAGER_FAIL ;
 int VM_PAGER_OK ;
 int vm_page_aflag_set (int *,int ) ;
 int vm_page_all_valid (int *) ;
 int * vm_page_alloc (int ,int ,int) ;
 int vm_page_assert_xbusied (int *) ;
 int vm_page_busy_downgrade (int *) ;
 int vm_page_busy_sleep (int *,char*,int) ;
 int vm_page_free (int *) ;
 int * vm_page_lookup (int ,int ) ;
 int vm_page_sunbusy (int *) ;
 int vm_page_trysbusy (int *) ;
 int vm_page_tryxbusy (int *) ;
 int vm_page_unwire_noq (int *) ;
 int vm_page_wire (int *) ;
 int vm_page_xunbusy (int *) ;
 int vm_page_zero_invalid (int *,int ) ;
 int vm_pager_get_pages (int ,int **,int,int *,int *) ;
 scalar_t__ vm_pager_has_page (int ,int ,int *,int *) ;

int
vm_page_grab_valid(vm_page_t *mp, vm_object_t object, vm_pindex_t pindex, int allocflags)
{
 vm_page_t m;
 bool sleep, xbusy;
 int pflags;
 int rv;

 KASSERT((allocflags & VM_ALLOC_SBUSY) == 0 ||
     (allocflags & VM_ALLOC_IGN_SBUSY) != 0,
     ("vm_page_grab_valid: VM_ALLOC_SBUSY/VM_ALLOC_IGN_SBUSY mismatch"));
 KASSERT((allocflags &
     (VM_ALLOC_NOWAIT | VM_ALLOC_WAITFAIL | VM_ALLOC_ZERO)) == 0,
     ("vm_page_grab_valid: Invalid flags 0x%X", allocflags));
 VM_OBJECT_ASSERT_WLOCKED(object);
 pflags = allocflags & ~(VM_ALLOC_NOBUSY | VM_ALLOC_SBUSY);
 pflags |= VM_ALLOC_WAITFAIL;

retrylookup:
 xbusy = 0;
 if ((m = vm_page_lookup(object, pindex)) != ((void*)0)) {
  if (!vm_page_all_valid(m) ||
      (allocflags & (VM_ALLOC_IGN_SBUSY | VM_ALLOC_SBUSY)) == 0) {
   sleep = !vm_page_tryxbusy(m);
   xbusy = 1;
  } else
   sleep = !vm_page_trysbusy(m);
  if (sleep) {





   if ((allocflags & VM_ALLOC_NOCREAT) == 0)
    vm_page_aflag_set(m, PGA_REFERENCED);
   vm_page_busy_sleep(m, "pgrbwt", (allocflags &
       VM_ALLOC_IGN_SBUSY) != 0);
   VM_OBJECT_WLOCK(object);
   goto retrylookup;
  }
  if ((allocflags & VM_ALLOC_NOCREAT) != 0 &&
     !vm_page_all_valid(m)) {
   if (xbusy)
    vm_page_xunbusy(m);
   else
    vm_page_sunbusy(m);
   *mp = ((void*)0);
   return (VM_PAGER_FAIL);
  }
  if ((allocflags & VM_ALLOC_WIRED) != 0)
   vm_page_wire(m);
  if (vm_page_all_valid(m))
   goto out;
 } else if ((allocflags & VM_ALLOC_NOCREAT) != 0) {
  *mp = ((void*)0);
  return (VM_PAGER_FAIL);
 } else if ((m = vm_page_alloc(object, pindex, pflags)) != ((void*)0)) {
  xbusy = 1;
 } else {
  goto retrylookup;
 }

 vm_page_assert_xbusied(m);
 MPASS(xbusy);
 if (vm_pager_has_page(object, pindex, ((void*)0), ((void*)0))) {
  rv = vm_pager_get_pages(object, &m, 1, ((void*)0), ((void*)0));
  if (rv != VM_PAGER_OK) {
   if (allocflags & VM_ALLOC_WIRED)
    vm_page_unwire_noq(m);
   vm_page_free(m);
   *mp = ((void*)0);
   return (rv);
  }
  MPASS(vm_page_all_valid(m));
 } else {
  vm_page_zero_invalid(m, TRUE);
 }
out:
 if ((allocflags & VM_ALLOC_NOBUSY) != 0) {
  if (xbusy)
   vm_page_xunbusy(m);
  else
   vm_page_sunbusy(m);
 }
 if ((allocflags & VM_ALLOC_SBUSY) != 0 && xbusy)
  vm_page_busy_downgrade(m);
 *mp = m;
 return (VM_PAGER_OK);
}
