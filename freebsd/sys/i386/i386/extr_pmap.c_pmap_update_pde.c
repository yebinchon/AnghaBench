
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef TYPE_1__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_4__ {int pm_active; } ;


 int CPU_EMPTY (int *) ;
 TYPE_1__* kernel_pmap ;
 int pde_store (int *,int ) ;
 int pmap_kenter_pde (int ,int ) ;
 int pmap_update_pde_invalidate (int ,int ) ;

__attribute__((used)) static void
pmap_update_pde(pmap_t pmap, vm_offset_t va, pd_entry_t *pde, pd_entry_t newpde)
{

 if (pmap == kernel_pmap)
  pmap_kenter_pde(va, newpde);
 else
  pde_store(pde, newpde);
 if (pmap == kernel_pmap || !CPU_EMPTY(&pmap->pm_active))
  pmap_update_pde_invalidate(va, newpde);
}
