
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int vm_size_t ;
typedef scalar_t__ vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef int vm_ooffset_t ;
typedef TYPE_2__* vm_object_t ;
typedef int uint8_t ;
struct TYPE_17__ {int flags; int backing_object_offset; struct TYPE_17__* backing_object; } ;
struct TYPE_16__ {scalar_t__ pindex; TYPE_2__* object; } ;


 int KASSERT (int,char*) ;
 int OBJ_FICTITIOUS ;
 scalar_t__ OFF_TO_IDX (int) ;
 int PAGE_MASK ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int VM_OBJECT_RLOCK (TYPE_2__*) ;
 int VM_OBJECT_RUNLOCK (TYPE_2__*) ;
 scalar_t__ atop (int) ;
 int listq ;
 int vm_page_busy_sleep (TYPE_1__*,char*,int) ;
 TYPE_1__* vm_page_find_least (TYPE_2__*,scalar_t__) ;
 TYPE_1__* vm_page_lookup (TYPE_2__*,scalar_t__) ;
 int vm_page_sunbusy (TYPE_1__*) ;
 scalar_t__ vm_page_trysbusy (TYPE_1__*) ;
 int vm_page_unwire (TYPE_1__*,int ) ;

void
vm_object_unwire(vm_object_t object, vm_ooffset_t offset, vm_size_t length,
    uint8_t queue)
{
 vm_object_t tobject, t1object;
 vm_page_t m, tm;
 vm_pindex_t end_pindex, pindex, tpindex;
 int depth, locked_depth;

 KASSERT((offset & PAGE_MASK) == 0,
     ("vm_object_unwire: offset is not page aligned"));
 KASSERT((length & PAGE_MASK) == 0,
     ("vm_object_unwire: length is not a multiple of PAGE_SIZE"));

 if ((object->flags & OBJ_FICTITIOUS) != 0)
  return;
 pindex = OFF_TO_IDX(offset);
 end_pindex = pindex + atop(length);
again:
 locked_depth = 1;
 VM_OBJECT_RLOCK(object);
 m = vm_page_find_least(object, pindex);
 while (pindex < end_pindex) {
  if (m == ((void*)0) || pindex < m->pindex) {





   tobject = object;
   tpindex = pindex;
   depth = 0;
   do {
    tpindex +=
        OFF_TO_IDX(tobject->backing_object_offset);
    tobject = tobject->backing_object;
    KASSERT(tobject != ((void*)0),
        ("vm_object_unwire: missing page"));
    if ((tobject->flags & OBJ_FICTITIOUS) != 0)
     goto next_page;
    depth++;
    if (depth == locked_depth) {
     locked_depth++;
     VM_OBJECT_RLOCK(tobject);
    }
   } while ((tm = vm_page_lookup(tobject, tpindex)) ==
       ((void*)0));
  } else {
   tm = m;
   m = TAILQ_NEXT(m, listq);
  }
  if (vm_page_trysbusy(tm) == 0) {
   for (tobject = object; locked_depth >= 1;
       locked_depth--) {
    t1object = tobject->backing_object;
    if (tm->object != tobject)
     VM_OBJECT_RUNLOCK(tobject);
    tobject = t1object;
   }
   vm_page_busy_sleep(tm, "unwbo", 1);
   goto again;
  }
  vm_page_unwire(tm, queue);
  vm_page_sunbusy(tm);
next_page:
  pindex++;
 }

 for (tobject = object; locked_depth >= 1; locked_depth--) {
  t1object = tobject->backing_object;
  VM_OBJECT_RUNLOCK(tobject);
  tobject = t1object;
 }
}
