
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_page_t ;
typedef int vm_offset_t ;
struct TYPE_2__ {int (* pm_copy_pages ) (int *,int ,int *,int ,int) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int *,int ,int *,int ,int) ;

void
pmap_copy_pages(vm_page_t ma[], vm_offset_t a_offset, vm_page_t mb[],
    vm_offset_t b_offset, int xfersize)
{

 pmap_methods_ptr->pm_copy_pages(ma, a_offset, mb, b_offset, xfersize);
}
