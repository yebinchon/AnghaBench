
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_page_t ;
typedef int vm_offset_t ;
struct TYPE_2__ {int (* pm_cp_slow0_map ) (int ,int,int *) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int ,int,int *) ;

void
pmap_cp_slow0_map(vm_offset_t kaddr, int plen, vm_page_t *ma)
{

 pmap_methods_ptr->pm_cp_slow0_map(kaddr, plen, ma);
}
