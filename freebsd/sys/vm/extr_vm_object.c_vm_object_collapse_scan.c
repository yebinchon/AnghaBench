
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


typedef scalar_t__ vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
struct TYPE_29__ {scalar_t__ size; scalar_t__ type; int memq; int backing_object_offset; struct TYPE_29__* backing_object; } ;
struct TYPE_28__ {scalar_t__ pindex; TYPE_2__* object; } ;


 int KASSERT (int,char*) ;
 scalar_t__ OBJT_SWAP ;
 int OBJ_DEAD ;
 int OBSC_COLLAPSE_WAIT ;
 scalar_t__ OFF_TO_IDX (int ) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_2__*) ;
 int listq ;
 int pmap_page_is_mapped (TYPE_1__*) ;
 int swap_pager_freespace (TYPE_2__*,scalar_t__,int) ;
 TYPE_1__* vm_object_collapse_scan_wait (TYPE_2__*,TYPE_1__*,TYPE_1__*,int) ;
 int vm_object_set_flag (TYPE_2__*,int ) ;
 int vm_page_free (TYPE_1__*) ;
 TYPE_1__* vm_page_lookup (TYPE_2__*,scalar_t__) ;
 int vm_page_none_valid (TYPE_1__*) ;
 scalar_t__ vm_page_remove (TYPE_1__*) ;
 scalar_t__ vm_page_rename (TYPE_1__*,TYPE_2__*,scalar_t__) ;
 scalar_t__ vm_page_tryxbusy (TYPE_1__*) ;
 int vm_page_xunbusy (TYPE_1__*) ;
 scalar_t__ vm_pager_has_page (TYPE_2__*,scalar_t__,int *,int *) ;
 int vm_reserv_rename (TYPE_1__*,TYPE_2__*,TYPE_2__*,scalar_t__) ;

__attribute__((used)) static bool
vm_object_collapse_scan(vm_object_t object, int op)
{
 vm_object_t backing_object;
 vm_page_t next, p, pp;
 vm_pindex_t backing_offset_index, new_pindex;

 VM_OBJECT_ASSERT_WLOCKED(object);
 VM_OBJECT_ASSERT_WLOCKED(object->backing_object);

 backing_object = object->backing_object;
 backing_offset_index = OFF_TO_IDX(object->backing_object_offset);




 if ((op & OBSC_COLLAPSE_WAIT) != 0)
  vm_object_set_flag(backing_object, OBJ_DEAD);




 for (p = TAILQ_FIRST(&backing_object->memq); p != ((void*)0); p = next) {
  next = TAILQ_NEXT(p, listq);
  new_pindex = p->pindex - backing_offset_index;




  if (vm_page_tryxbusy(p) == 0) {
   next = vm_object_collapse_scan_wait(object, p, next, op);
   continue;
  }

  KASSERT(p->object == backing_object,
      ("vm_object_collapse_scan: object mismatch"));

  if (p->pindex < backing_offset_index ||
      new_pindex >= object->size) {
   if (backing_object->type == OBJT_SWAP)
    swap_pager_freespace(backing_object, p->pindex,
        1);

   KASSERT(!pmap_page_is_mapped(p),
       ("freeing mapped page %p", p));
   if (vm_page_remove(p))
    vm_page_free(p);
   else
    vm_page_xunbusy(p);
   continue;
  }

  pp = vm_page_lookup(object, new_pindex);
  if (pp != ((void*)0) && vm_page_tryxbusy(pp) == 0) {
   vm_page_xunbusy(p);
   next = vm_object_collapse_scan_wait(object, pp, next,
       op);
   continue;
  }

  KASSERT(pp == ((void*)0) || !vm_page_none_valid(pp),
      ("unbusy invalid page %p", pp));

  if (pp != ((void*)0) || vm_pager_has_page(object, new_pindex, ((void*)0),
   ((void*)0))) {






   if (backing_object->type == OBJT_SWAP)
    swap_pager_freespace(backing_object, p->pindex,
        1);
   KASSERT(!pmap_page_is_mapped(p),
       ("freeing mapped page %p", p));
   if (vm_page_remove(p))
    vm_page_free(p);
   else
    vm_page_xunbusy(p);
   if (pp != ((void*)0))
    vm_page_xunbusy(pp);
   continue;
  }
  if (vm_page_rename(p, object, new_pindex)) {
   vm_page_xunbusy(p);
   if (pp != ((void*)0))
    vm_page_xunbusy(pp);
   next = vm_object_collapse_scan_wait(object, ((void*)0), next,
       op);
   continue;
  }


  if (backing_object->type == OBJT_SWAP)
   swap_pager_freespace(backing_object,
       new_pindex + backing_offset_index, 1);
  vm_page_xunbusy(p);
 }
 return (1);
}
