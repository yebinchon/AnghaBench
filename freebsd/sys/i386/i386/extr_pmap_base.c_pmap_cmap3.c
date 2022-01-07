
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int u_int ;
typedef int caddr_t ;
struct TYPE_2__ {int (* pm_cmap3 ) (int ,int ) ;} ;


 TYPE_1__* pmap_methods_ptr ;
 int stub1 (int ,int ) ;

caddr_t
pmap_cmap3(vm_paddr_t pa, u_int pte_flags)
{

 return (pmap_methods_ptr->pm_cmap3(pa, pte_flags));
}
