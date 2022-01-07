
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef TYPE_2__* vm_object_t ;
typedef int boolean_t ;
struct TYPE_17__ {scalar_t__ type; scalar_t__ resident_page_count; scalar_t__ size; int generation; int cleangeneration; } ;
struct TYPE_16__ {scalar_t__ pindex; } ;


 int FALSE ;
 int MNT_WAIT ;
 int OBJPC_INVAL ;
 int OBJPC_SYNC ;
 scalar_t__ OBJT_VNODE ;
 scalar_t__ OFF_TO_IDX (scalar_t__) ;
 scalar_t__ PAGE_MASK ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int TRUE ;
 int VM_ALLOC_WAITFAIL ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_2__*) ;
 int VM_PAGER_CLUSTER_OK ;
 int VM_PAGER_PUT_INVAL ;
 int VM_PAGER_PUT_SYNC ;
 int VOP_FSYNC (int ,int ) ;
 int listq ;
 int vm_object_mightbedirty (TYPE_2__*) ;
 int vm_object_page_collect_flush (TYPE_2__*,TYPE_1__*,int,int,int*,int*) ;
 int vm_object_page_remove_write (TYPE_1__*,int,int*) ;
 scalar_t__ vm_page_busy_acquire (TYPE_1__*,int ) ;
 TYPE_1__* vm_page_find_least (TYPE_2__*,scalar_t__) ;
 scalar_t__ vm_page_none_valid (TYPE_1__*) ;
 int vm_page_xunbusy (TYPE_1__*) ;
 int vp ;

boolean_t
vm_object_page_clean(vm_object_t object, vm_ooffset_t start, vm_ooffset_t end,
    int flags)
{
 vm_page_t np, p;
 vm_pindex_t pi, tend, tstart;
 int curgeneration, n, pagerflags;
 boolean_t eio, res, allclean;

 VM_OBJECT_ASSERT_WLOCKED(object);

 if (object->type != OBJT_VNODE || !vm_object_mightbedirty(object) ||
     object->resident_page_count == 0)
  return (TRUE);

 pagerflags = (flags & (OBJPC_SYNC | OBJPC_INVAL)) != 0 ?
     VM_PAGER_PUT_SYNC : VM_PAGER_CLUSTER_OK;
 pagerflags |= (flags & OBJPC_INVAL) != 0 ? VM_PAGER_PUT_INVAL : 0;

 tstart = OFF_TO_IDX(start);
 tend = (end == 0) ? object->size : OFF_TO_IDX(end + PAGE_MASK);
 allclean = tstart == 0 && tend >= object->size;
 res = TRUE;

rescan:
 curgeneration = object->generation;

 for (p = vm_page_find_least(object, tstart); p != ((void*)0); p = np) {
  pi = p->pindex;
  if (pi >= tend)
   break;
  np = TAILQ_NEXT(p, listq);
  if (vm_page_none_valid(p))
   continue;
  if (vm_page_busy_acquire(p, VM_ALLOC_WAITFAIL) == 0) {
   if (object->generation != curgeneration &&
       (flags & OBJPC_SYNC) != 0)
    goto rescan;
   np = vm_page_find_least(object, pi);
   continue;
  }
  if (!vm_object_page_remove_write(p, flags, &allclean)) {
   vm_page_xunbusy(p);
   continue;
  }

  n = vm_object_page_collect_flush(object, p, pagerflags,
      flags, &allclean, &eio);
  if (eio) {
   res = FALSE;
   allclean = FALSE;
  }
  if (object->generation != curgeneration &&
      (flags & OBJPC_SYNC) != 0)
   goto rescan;
  if (n == 0) {
   n = 1;
   allclean = FALSE;
  }
  np = vm_page_find_least(object, pi + n);
 }




 if (allclean)
  object->cleangeneration = curgeneration;
 return (res);
}
