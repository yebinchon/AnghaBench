
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
struct TYPE_10__ {scalar_t__ busy; } ;
struct TYPE_9__ {TYPE_2__* object; } ;


 int FALSE ;
 int MA_NOTOWNED ;
 int TRUE ;
 int VM_OBJECT_ASSERT_WLOCKED (TYPE_2__*) ;
 int VM_OBJECT_WLOCK (TYPE_2__*) ;
 scalar_t__ vm_page_busied (TYPE_1__*) ;
 int vm_page_busy_sleep (TYPE_1__*,char const*,int) ;
 int vm_page_lock_assert (TYPE_1__*,int ) ;

int
vm_page_sleep_if_busy(vm_page_t m, const char *msg)
{
 vm_object_t obj;

 vm_page_lock_assert(m, MA_NOTOWNED);
 VM_OBJECT_ASSERT_WLOCKED(m->object);
 obj = m->object;
 if (vm_page_busied(m) || (obj != ((void*)0) && obj->busy)) {
  vm_page_busy_sleep(m, msg, 0);
  VM_OBJECT_WLOCK(obj);
  return (TRUE);
 }
 return (FALSE);
}
