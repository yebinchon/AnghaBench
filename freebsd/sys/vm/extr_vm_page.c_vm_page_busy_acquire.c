
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int * vm_object_t ;
struct TYPE_7__ {int * object; } ;


 int FALSE ;
 int KASSERT (int,char*) ;
 int MPASS (int) ;
 int TRUE ;
 int VM_ALLOC_NOWAIT ;
 int VM_ALLOC_SBUSY ;
 int VM_ALLOC_WAITFAIL ;
 int VM_OBJECT_WLOCK (int *) ;
 int VM_OBJECT_WOWNED (int *) ;
 int _vm_page_busy_sleep (int *,TYPE_1__*,char*,int,int) ;
 scalar_t__ vm_page_trysbusy (TYPE_1__*) ;
 scalar_t__ vm_page_tryxbusy (TYPE_1__*) ;
 scalar_t__ vm_page_wired (TYPE_1__*) ;

int
vm_page_busy_acquire(vm_page_t m, int allocflags)
{
 vm_object_t obj;
 bool locked;
 obj = m->object;
 for (;;) {
  if ((allocflags & VM_ALLOC_SBUSY) == 0) {
   if (vm_page_tryxbusy(m))
    return (TRUE);
  } else {
   if (vm_page_trysbusy(m))
    return (TRUE);
  }
  if ((allocflags & VM_ALLOC_NOWAIT) != 0)
   return (FALSE);
  if (obj != ((void*)0))
   locked = VM_OBJECT_WOWNED(obj);
  else
   locked = FALSE;
  MPASS(locked || vm_page_wired(m));
  _vm_page_busy_sleep(obj, m, "vmpba",
      (allocflags & VM_ALLOC_SBUSY) != 0, locked);
  if (locked)
   VM_OBJECT_WLOCK(obj);
  if ((allocflags & VM_ALLOC_WAITFAIL) != 0)
   return (FALSE);
  KASSERT(m->object == obj || m->object == ((void*)0),
      ("vm_page_busy_acquire: page %p does not belong to %p",
      m, obj));
 }
}
