
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
struct rwlock {int dummy; } ;
typedef int pmap_t ;
typedef int pd_entry_t ;
struct TYPE_5__ {int ref_count; } ;


 TYPE_1__* PHYS_TO_VM_PAGE (int ) ;
 int PTE_TO_PHYS (scalar_t__) ;
 TYPE_1__* _pmap_alloc_l3 (int ,int ,struct rwlock**) ;
 int * pmap_l2 (int ,int ) ;
 int pmap_l2_pindex (int ) ;
 scalar_t__ pmap_load (int *) ;

__attribute__((used)) static vm_page_t
pmap_alloc_l3(pmap_t pmap, vm_offset_t va, struct rwlock **lockp)
{
 vm_pindex_t ptepindex;
 pd_entry_t *l2;
 vm_paddr_t phys;
 vm_page_t m;




 ptepindex = pmap_l2_pindex(va);
retry:



 l2 = pmap_l2(pmap, va);





 if (l2 != ((void*)0) && pmap_load(l2) != 0) {
  phys = PTE_TO_PHYS(pmap_load(l2));
  m = PHYS_TO_VM_PAGE(phys);
  m->ref_count++;
 } else {




  m = _pmap_alloc_l3(pmap, ptepindex, lockp);
  if (m == ((void*)0) && lockp != ((void*)0))
   goto retry;
 }
 return (m);
}
