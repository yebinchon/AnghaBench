
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
struct pvo_entry {int pvo_vaddr; } ;
typedef TYPE_1__* pmap_t ;
struct TYPE_4__ {int pmap_pvo; } ;


 int ADDR_POFF ;
 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (TYPE_1__*,int ) ;
 struct pvo_entry* RB_FIND (int ,int *,struct pvo_entry*) ;
 int pvo_tree ;

__attribute__((used)) static struct pvo_entry *
moea64_pvo_find_va(pmap_t pm, vm_offset_t va)
{
 struct pvo_entry key;

 PMAP_LOCK_ASSERT(pm, MA_OWNED);

 key.pvo_vaddr = va & ~ADDR_POFF;
 return (RB_FIND(pvo_tree, &pm->pmap_pvo, &key));
}
