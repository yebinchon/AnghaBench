
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_object_t ;
struct TYPE_5__ {int object; } ;


 int MA_NOTOWNED ;
 int VM_OBJECT_ASSERT_LOCKED (int ) ;
 int _vm_page_busy_sleep (int ,TYPE_1__*,char const*,int,int) ;
 int vm_page_lock_assert (TYPE_1__*,int ) ;

void
vm_page_busy_sleep(vm_page_t m, const char *wmesg, bool nonshared)
{
 vm_object_t obj;

 obj = m->object;
 VM_OBJECT_ASSERT_LOCKED(obj);
 vm_page_lock_assert(m, MA_NOTOWNED);

 _vm_page_busy_sleep(obj, m, wmesg, nonshared, 1);
}
