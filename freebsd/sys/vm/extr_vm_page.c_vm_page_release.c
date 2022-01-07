
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int * vm_object_t ;
typedef int u_int ;
struct TYPE_9__ {int oflags; int ref_count; int * object; } ;


 int KASSERT (int,char*) ;
 int VM_OBJECT_TRYWLOCK (int *) ;
 int VM_OBJECT_WUNLOCK (int *) ;
 int VPO_UNMANAGED ;
 int VPRC_WIRE_COUNT (int) ;
 int VPR_TRYFREE ;
 scalar_t__ __predict_true (int ) ;
 int atomic_fcmpset_rel_int (int*,int*,int) ;
 scalar_t__ atomic_load_ptr (int **) ;
 scalar_t__ vm_page_busied (TYPE_1__*) ;
 int vm_page_free (TYPE_1__*) ;
 int vm_page_lock (TYPE_1__*) ;
 int vm_page_release_locked (TYPE_1__*,int) ;
 int vm_page_release_toq (TYPE_1__*,int) ;
 int vm_page_unlock (TYPE_1__*) ;
 int vm_wire_sub (int) ;

void
vm_page_release(vm_page_t m, int flags)
{
 vm_object_t object;
 u_int old;
 bool locked;

 KASSERT((m->oflags & VPO_UNMANAGED) == 0,
     ("vm_page_release: page %p is unmanaged", m));

 if ((flags & VPR_TRYFREE) != 0) {
  for (;;) {
   object = (vm_object_t)atomic_load_ptr(&m->object);
   if (object == ((void*)0))
    break;

   if (vm_page_busied(m) || !VM_OBJECT_TRYWLOCK(object)) {
    object = ((void*)0);
    break;
   }
   if (object == m->object)
    break;
   VM_OBJECT_WUNLOCK(object);
  }
  if (__predict_true(object != ((void*)0))) {
   vm_page_release_locked(m, flags);
   VM_OBJECT_WUNLOCK(object);
   return;
  }
 }






 old = m->ref_count;
 locked = 0;
 do {
  KASSERT(VPRC_WIRE_COUNT(old) > 0,
      ("vm_page_unwire: wire count underflow for page %p", m));
  if (!locked && VPRC_WIRE_COUNT(old) == 1) {
   vm_page_lock(m);
   locked = 1;
   vm_page_release_toq(m, flags);
  }
 } while (!atomic_fcmpset_rel_int(&m->ref_count, &old, old - 1));






 if (locked)
  vm_page_unlock(m);

 if (VPRC_WIRE_COUNT(old) == 1) {
  vm_wire_sub(1);
  if (old == 1)
   vm_page_free(m);
 }
}
