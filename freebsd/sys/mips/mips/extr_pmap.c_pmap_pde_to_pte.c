
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef scalar_t__ pd_entry_t ;


 size_t pmap_pte_index (int ) ;

__attribute__((used)) static __inline pt_entry_t *
pmap_pde_to_pte(pd_entry_t *pde, vm_offset_t va)
{
 pt_entry_t *pte;

 pte = (pt_entry_t *)*pde;
 return (&pte[pmap_pte_index(va)]);
}
