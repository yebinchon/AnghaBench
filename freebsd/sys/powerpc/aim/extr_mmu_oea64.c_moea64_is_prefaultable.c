
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct pvo_entry {int dummy; } ;
typedef int pmap_t ;
typedef int mmu_t ;
typedef int boolean_t ;


 int ADDR_POFF ;
 int FALSE ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int TRUE ;
 struct pvo_entry* moea64_pvo_find_va (int ,int) ;

boolean_t
moea64_is_prefaultable(mmu_t mmu, pmap_t pmap, vm_offset_t va)
{
 struct pvo_entry *pvo;
 boolean_t rv = TRUE;

 PMAP_LOCK(pmap);
 pvo = moea64_pvo_find_va(pmap, va & ~ADDR_POFF);
 if (pvo != ((void*)0))
  rv = FALSE;
 PMAP_UNLOCK(pmap);
 return (rv);
}
