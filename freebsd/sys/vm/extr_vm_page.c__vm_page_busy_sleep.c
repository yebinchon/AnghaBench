
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int * vm_object_t ;
typedef int u_int ;
struct TYPE_7__ {int busy_lock; } ;


 int DROP_GIANT () ;
 int PICKUP_GIANT () ;
 int PVM ;
 int VM_OBJECT_DROP (int *) ;
 int VPB_BIT_SHARED ;
 int VPB_BIT_WAITERS ;
 int VPB_UNBUSIED ;
 int atomic_cmpset_int (int*,int,int) ;
 int sleepq_add (TYPE_1__*,int *,char const*,int ,int ) ;
 int sleepq_lock (TYPE_1__*) ;
 int sleepq_release (TYPE_1__*) ;
 int sleepq_wait (TYPE_1__*,int ) ;
 scalar_t__ vm_object_busied (int *) ;
 int vm_object_busy_wait (int *,char const*) ;

__attribute__((used)) static void
_vm_page_busy_sleep(vm_object_t obj, vm_page_t m, const char *wmesg,
    bool nonshared, bool locked)
{
 u_int x;





 if (obj != ((void*)0) && vm_object_busied(obj)) {
  if (locked)
   VM_OBJECT_DROP(obj);
  vm_object_busy_wait(obj, wmesg);
  return;
 }
 sleepq_lock(m);
 x = m->busy_lock;
 if (x == VPB_UNBUSIED || (nonshared && (x & VPB_BIT_SHARED) != 0) ||
     ((x & VPB_BIT_WAITERS) == 0 &&
     !atomic_cmpset_int(&m->busy_lock, x, x | VPB_BIT_WAITERS))) {
  if (locked)
   VM_OBJECT_DROP(obj);
  sleepq_release(m);
  return;
 }
 if (locked)
  VM_OBJECT_DROP(obj);
 DROP_GIANT();
 sleepq_add(m, ((void*)0), wmesg, 0, 0);
 sleepq_wait(m, PVM);
 PICKUP_GIANT();
}
