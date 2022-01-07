
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int * vm_object_t ;
struct TYPE_4__ {int * object; int busy_lock; } ;


 int VPB_SINGLE_EXCLUSIVER ;
 int VPB_UNBUSIED ;
 scalar_t__ atomic_cmpset_acq_int (int *,int ,int ) ;
 scalar_t__ vm_object_busied (int *) ;
 int vm_page_xunbusy (TYPE_1__*) ;

int
vm_page_tryxbusy(vm_page_t m)
{
 vm_object_t obj;

        if (atomic_cmpset_acq_int(&(m)->busy_lock, VPB_UNBUSIED,
            VPB_SINGLE_EXCLUSIVER) == 0)
  return (0);

 obj = m->object;
 if (obj != ((void*)0) && vm_object_busied(obj)) {
  vm_page_xunbusy(m);
  return (0);
 }
 return (1);
}
