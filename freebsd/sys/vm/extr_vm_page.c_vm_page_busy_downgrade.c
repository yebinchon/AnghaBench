
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int u_int ;
struct TYPE_5__ {int busy_lock; } ;


 int VPB_BIT_WAITERS ;
 int VPB_SHARERS_WORD (int) ;
 scalar_t__ atomic_fcmpset_rel_int (int*,int*,int ) ;
 int vm_page_assert_xbusied (TYPE_1__*) ;
 int wakeup (TYPE_1__*) ;

void
vm_page_busy_downgrade(vm_page_t m)
{
 u_int x;

 vm_page_assert_xbusied(m);

 x = m->busy_lock;
 for (;;) {
  if (atomic_fcmpset_rel_int(&m->busy_lock,
      &x, VPB_SHARERS_WORD(1)))
   break;
 }
 if ((x & VPB_BIT_WAITERS) != 0)
  wakeup(m);
}
