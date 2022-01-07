
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pd_entry_t ;


 int kernel_pmap ;
 int pde_store (int *,int ) ;
 int * pmap_pde (int ,int ) ;

__attribute__((used)) static void
pmap_kenter_pde(vm_offset_t va, pd_entry_t newpde)
{
 pd_entry_t *pde;

 pde = pmap_pde(kernel_pmap, va);
 pde_store(pde, newpde);
}
