
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int vm_offset_t ;
struct TYPE_2__ {int (* pm_map ) (int *,int ,int ,int) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int *,int ,int ,int) ;

vm_offset_t
pmap_map(vm_offset_t *virt, vm_paddr_t start, vm_paddr_t end, int prot)
{

 return (pmap_methods_ptr->pm_map(virt, start, end, prot));
}
