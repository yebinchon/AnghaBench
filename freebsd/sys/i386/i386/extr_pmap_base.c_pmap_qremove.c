
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_2__ {int (* pm_qremove ) (int ,int) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int ,int) ;

void
pmap_qremove(vm_offset_t sva, int count)
{

 pmap_methods_ptr->pm_qremove(sva, count);
}
