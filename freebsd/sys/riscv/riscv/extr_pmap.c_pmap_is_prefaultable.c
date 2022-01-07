
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int boolean_t ;


 int FALSE ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int TRUE ;
 int * pmap_l3 (int ,int ) ;
 scalar_t__ pmap_load (int *) ;

boolean_t
pmap_is_prefaultable(pmap_t pmap, vm_offset_t addr)
{
 pt_entry_t *l3;
 boolean_t rv;

 rv = FALSE;
 PMAP_LOCK(pmap);
 l3 = pmap_l3(pmap, addr);
 if (l3 != ((void*)0) && pmap_load(l3) != 0) {
  rv = TRUE;
 }
 PMAP_UNLOCK(pmap);
 return (rv);
}
