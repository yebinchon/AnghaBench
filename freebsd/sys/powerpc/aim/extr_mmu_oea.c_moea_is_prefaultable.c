
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_3__ {int pte_hi; } ;
struct TYPE_4__ {TYPE_1__ pte; } ;
struct pvo_entry {TYPE_2__ pvo_pte; } ;
typedef int pmap_t ;
typedef int mmu_t ;
typedef int boolean_t ;


 int ADDR_POFF ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PTE_VALID ;
 struct pvo_entry* moea_pvo_find_va (int ,int,int *) ;

boolean_t
moea_is_prefaultable(mmu_t mmu, pmap_t pmap, vm_offset_t va)
{
 struct pvo_entry *pvo;
 boolean_t rv;

 PMAP_LOCK(pmap);
 pvo = moea_pvo_find_va(pmap, va & ~ADDR_POFF, ((void*)0));
 rv = pvo == ((void*)0) || (pvo->pvo_pte.pte.pte_hi & PTE_VALID) == 0;
 PMAP_UNLOCK(pmap);
 return (rv);
}
