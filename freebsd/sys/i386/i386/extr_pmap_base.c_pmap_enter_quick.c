
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int pmap_t ;
struct TYPE_2__ {int (* pm_enter_quick ) (int ,int ,int ,int ) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int ,int ,int ,int ) ;

void
pmap_enter_quick(pmap_t pmap, vm_offset_t va, vm_page_t m, vm_prot_t prot)
{

 pmap_methods_ptr->pm_enter_quick(pmap, va, m, prot);
}
