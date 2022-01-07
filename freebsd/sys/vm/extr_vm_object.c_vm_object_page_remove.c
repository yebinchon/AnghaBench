
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef scalar_t__ vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
struct TYPE_23__ {int flags; scalar_t__ resident_page_count; scalar_t__ ref_count; } ;
struct TYPE_22__ {scalar_t__ pindex; int flags; scalar_t__ dirty; } ;


 int KASSERT (int,char*) ;
 int OBJPR_CLEANONLY ;
 int OBJPR_NOTMAPPED ;
 int OBJ_UNMANAGED ;
 int PG_FICTITIOUS ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_2__*) ;
 int listq ;
 int pmap_remove_all (TYPE_1__*) ;
 int vm_object_pip_add (TYPE_2__*,int) ;
 int vm_object_pip_wakeup (TYPE_2__*) ;
 TYPE_1__* vm_page_find_least (TYPE_2__*,scalar_t__) ;
 int vm_page_free (TYPE_1__*) ;
 int vm_page_invalid (TYPE_1__*) ;
 int vm_page_none_valid (TYPE_1__*) ;
 int vm_page_sleep_if_busy (TYPE_1__*,char*) ;
 int vm_page_try_remove_all (TYPE_1__*) ;
 int vm_page_try_remove_write (TYPE_1__*) ;
 scalar_t__ vm_page_tryxbusy (TYPE_1__*) ;
 int vm_page_undirty (TYPE_1__*) ;
 scalar_t__ vm_page_wired (TYPE_1__*) ;
 int vm_page_xunbusy (TYPE_1__*) ;

void
vm_object_page_remove(vm_object_t object, vm_pindex_t start, vm_pindex_t end,
    int options)
{
 vm_page_t p, next;

 VM_OBJECT_ASSERT_WLOCKED(object);
 KASSERT((object->flags & OBJ_UNMANAGED) == 0 ||
     (options & (OBJPR_CLEANONLY | OBJPR_NOTMAPPED)) == OBJPR_NOTMAPPED,
     ("vm_object_page_remove: illegal options for object %p", object));
 if (object->resident_page_count == 0)
  return;
 vm_object_pip_add(object, 1);
again:
 p = vm_page_find_least(object, start);





 for (; p != ((void*)0) && (p->pindex < end || end == 0); p = next) {
  next = TAILQ_NEXT(p, listq);
  if (vm_page_tryxbusy(p) == 0) {
   vm_page_sleep_if_busy(p, "vmopar");
   goto again;
  }
  if (vm_page_wired(p)) {
wired:
   if ((options & OBJPR_NOTMAPPED) == 0 &&
       object->ref_count != 0)
    pmap_remove_all(p);
   if ((options & OBJPR_CLEANONLY) == 0) {
    vm_page_invalid(p);
    vm_page_undirty(p);
   }
   vm_page_xunbusy(p);
   continue;
  }
  KASSERT((p->flags & PG_FICTITIOUS) == 0,
      ("vm_object_page_remove: page %p is fictitious", p));
  if ((options & OBJPR_CLEANONLY) != 0 &&
      !vm_page_none_valid(p)) {
   if ((options & OBJPR_NOTMAPPED) == 0 &&
       object->ref_count != 0 &&
       !vm_page_try_remove_write(p))
    goto wired;
   if (p->dirty != 0) {
    vm_page_xunbusy(p);
    continue;
   }
  }
  if ((options & OBJPR_NOTMAPPED) == 0 &&
      object->ref_count != 0 && !vm_page_try_remove_all(p))
   goto wired;
  vm_page_free(p);
 }
 vm_object_pip_wakeup(object);
}
