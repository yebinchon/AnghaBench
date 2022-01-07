
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef scalar_t__ pt_entry_t ;
typedef int pmap_t ;
typedef scalar_t__ pd_entry_t ;
typedef int boolean_t ;


 int FALSE ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 scalar_t__* pmap_pde (int ,int ) ;
 scalar_t__* pmap_pde_to_pte (scalar_t__*,int ) ;

boolean_t
pmap_is_prefaultable(pmap_t pmap, vm_offset_t addr)
{
 pd_entry_t *pde;
 pt_entry_t *pte;
 boolean_t rv;

 rv = FALSE;
 PMAP_LOCK(pmap);
 pde = pmap_pde(pmap, addr);
 if (pde != ((void*)0) && *pde != 0) {
  pte = pmap_pde_to_pte(pde, addr);
  rv = (*pte == 0);
 }
 PMAP_UNLOCK(pmap);
 return (rv);
}
