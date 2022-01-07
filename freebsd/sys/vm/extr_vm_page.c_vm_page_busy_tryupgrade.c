
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int u_int ;
struct TYPE_4__ {int busy_lock; } ;


 int KASSERT (int,char*) ;
 int VPB_BIT_WAITERS ;
 int VPB_SHARERS (int) ;
 int VPB_SHARERS_WORD (int) ;
 int VPB_SINGLE_EXCLUSIVER ;
 int atomic_fcmpset_acq_int (int*,int*,int) ;
 int vm_page_assert_sbusied (TYPE_1__*) ;

int
vm_page_busy_tryupgrade(vm_page_t m)
{
 u_int x;

 vm_page_assert_sbusied(m);

 x = m->busy_lock;
 for (;;) {
  if (VPB_SHARERS(x) > 1)
   return (0);
  KASSERT((x & ~VPB_BIT_WAITERS) == VPB_SHARERS_WORD(1),
      ("vm_page_busy_tryupgrade: invalid lock state"));
  if (!atomic_fcmpset_acq_int(&m->busy_lock, &x,
      VPB_SINGLE_EXCLUSIVER | (x & VPB_BIT_WAITERS)))
   continue;
  return (1);
 }
}
