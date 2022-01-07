
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pmap_t ;
typedef int boolean_t ;


 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int * tsb_tte_lookup (int ,int ) ;

boolean_t
pmap_is_prefaultable(pmap_t pmap, vm_offset_t addr)
{
 boolean_t rv;

 PMAP_LOCK(pmap);
 rv = tsb_tte_lookup(pmap, addr) == ((void*)0);
 PMAP_UNLOCK(pmap);
 return (rv);
}
