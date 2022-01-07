
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_5__ {int busy_lock; } ;


 int VPB_UNBUSIED ;
 int atomic_store_rel_int (int *,int ) ;
 int vm_page_assert_xbusied (TYPE_1__*) ;
 int wakeup (TYPE_1__*) ;

void
vm_page_xunbusy_hard(vm_page_t m)
{

 vm_page_assert_xbusied(m);




 atomic_store_rel_int(&m->busy_lock, VPB_UNBUSIED);
 wakeup(m);
}
