
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef scalar_t__ vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
struct TYPE_24__ {int backing_object_offset; struct TYPE_24__* backing_object; } ;
struct TYPE_23__ {scalar_t__ pindex; int flags; int oflags; } ;


 int KASSERT (int,char*) ;
 int MADV_WILLNEED ;
 scalar_t__ OFF_TO_IDX (int ) ;
 int PGA_REFERENCED ;
 int PG_FICTITIOUS ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int VM_OBJECT_WLOCK (TYPE_2__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_2__*) ;
 int VPO_UNMANAGED ;
 int listq ;
 int vm_object_advice_applies (TYPE_2__*,int) ;
 int vm_object_madvise_freespace (TYPE_2__*,int,scalar_t__,int) ;
 int vm_page_advise (TYPE_1__*,int) ;
 int vm_page_aflag_set (TYPE_1__*,int ) ;
 int vm_page_all_valid (TYPE_1__*) ;
 int vm_page_busy_sleep (TYPE_1__*,char*,int) ;
 TYPE_1__* vm_page_find_least (TYPE_2__*,scalar_t__) ;
 int vm_page_lock (TYPE_1__*) ;
 TYPE_1__* vm_page_lookup (TYPE_2__*,scalar_t__) ;
 scalar_t__ vm_page_tryxbusy (TYPE_1__*) ;
 int vm_page_unlock (TYPE_1__*) ;
 scalar_t__ vm_page_wired (TYPE_1__*) ;
 int vm_page_xunbusy (TYPE_1__*) ;

void
vm_object_madvise(vm_object_t object, vm_pindex_t pindex, vm_pindex_t end,
    int advice)
{
 vm_pindex_t tpindex;
 vm_object_t backing_object, tobject;
 vm_page_t m, tm;

 if (object == ((void*)0))
  return;

relookup:
 VM_OBJECT_WLOCK(object);
 if (!vm_object_advice_applies(object, advice)) {
  VM_OBJECT_WUNLOCK(object);
  return;
 }
 for (m = vm_page_find_least(object, pindex); pindex < end; pindex++) {
  tobject = object;







  if (m == ((void*)0) || pindex < m->pindex) {





   if (object->backing_object == ((void*)0)) {
    tpindex = (m != ((void*)0) && m->pindex < end) ?
        m->pindex : end;
    vm_object_madvise_freespace(object, advice,
        pindex, tpindex - pindex);
    if ((pindex = tpindex) == end)
     break;
    goto next_page;
   }

   tpindex = pindex;
   do {
    vm_object_madvise_freespace(tobject, advice,
        tpindex, 1);




    backing_object = tobject->backing_object;
    if (backing_object == ((void*)0))
     goto next_pindex;
    VM_OBJECT_WLOCK(backing_object);
    tpindex +=
        OFF_TO_IDX(tobject->backing_object_offset);
    if (tobject != object)
     VM_OBJECT_WUNLOCK(tobject);
    tobject = backing_object;
    if (!vm_object_advice_applies(tobject, advice))
     goto next_pindex;
   } while ((tm = vm_page_lookup(tobject, tpindex)) ==
       ((void*)0));
  } else {
next_page:
   tm = m;
   m = TAILQ_NEXT(m, listq);
  }





  if (!vm_page_all_valid(tm) || vm_page_wired(tm))
   goto next_pindex;
  KASSERT((tm->flags & PG_FICTITIOUS) == 0,
      ("vm_object_madvise: page %p is fictitious", tm));
  KASSERT((tm->oflags & VPO_UNMANAGED) == 0,
      ("vm_object_madvise: page %p is not managed", tm));
  if (vm_page_tryxbusy(tm) == 0) {
   if (object != tobject)
    VM_OBJECT_WUNLOCK(object);
   if (advice == MADV_WILLNEED) {





    vm_page_aflag_set(tm, PGA_REFERENCED);
   }
   vm_page_busy_sleep(tm, "madvpo", 0);
     goto relookup;
  }
  vm_page_lock(tm);
  vm_page_advise(tm, advice);
  vm_page_unlock(tm);
  vm_page_xunbusy(tm);
  vm_object_madvise_freespace(tobject, advice, tm->pindex, 1);
next_pindex:
  if (tobject != object)
   VM_OBJECT_WUNLOCK(tobject);
 }
 VM_OBJECT_WUNLOCK(object);
}
