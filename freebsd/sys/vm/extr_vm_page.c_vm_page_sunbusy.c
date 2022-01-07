
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int u_int ;
struct TYPE_5__ {int busy_lock; } ;


 int KASSERT (int,char*) ;
 int VPB_BIT_WAITERS ;
 int VPB_ONE_SHARER ;
 int VPB_SHARERS (int) ;
 int VPB_SHARERS_WORD (int) ;
 int VPB_UNBUSIED ;
 scalar_t__ atomic_fcmpset_int (int*,int*,int) ;
 int atomic_fcmpset_rel_int (int*,int*,int ) ;
 int vm_page_assert_sbusied (TYPE_1__*) ;
 int wakeup (TYPE_1__*) ;

void
vm_page_sunbusy(vm_page_t m)
{
 u_int x;

 vm_page_assert_sbusied(m);

 x = m->busy_lock;
 for (;;) {
  if (VPB_SHARERS(x) > 1) {
   if (atomic_fcmpset_int(&m->busy_lock, &x,
       x - VPB_ONE_SHARER))
    break;
   continue;
  }
  KASSERT((x & ~VPB_BIT_WAITERS) == VPB_SHARERS_WORD(1),
      ("vm_page_sunbusy: invalid lock state"));
  if (!atomic_fcmpset_rel_int(&m->busy_lock, &x, VPB_UNBUSIED))
   continue;
  if ((x & VPB_BIT_WAITERS) == 0)
   break;
  wakeup(m);
  break;
 }
}
