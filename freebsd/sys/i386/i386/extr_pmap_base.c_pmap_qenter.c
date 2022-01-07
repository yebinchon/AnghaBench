
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_page_t ;
typedef int vm_offset_t ;
struct TYPE_2__ {int (* pm_qenter ) (int ,int *,int) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int ,int *,int) ;

void
pmap_qenter(vm_offset_t sva, vm_page_t *ma, int count)
{

 pmap_methods_ptr->pm_qenter(sva, ma, count);
}
