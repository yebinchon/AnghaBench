
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int u_int ;
typedef int pmap_t ;
typedef int int8_t ;
struct TYPE_2__ {int (* pm_enter ) (int ,int ,int ,int ,int ,int ) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int ,int ,int ,int ,int ,int ) ;

int
pmap_enter(pmap_t pmap, vm_offset_t va, vm_page_t m, vm_prot_t prot,
    u_int flags, int8_t psind)
{

 return (pmap_methods_ptr->pm_enter(pmap, va, m, prot, flags, psind));
}
