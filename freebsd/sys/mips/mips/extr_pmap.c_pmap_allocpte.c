
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_offset_t ;
typedef int u_int ;
typedef int pmap_t ;
typedef int * pd_entry_t ;
struct TYPE_5__ {int ref_count; } ;


 int MIPS_DIRECT_TO_PHYS (int *) ;
 TYPE_1__* PHYS_TO_VM_PAGE (int ) ;
 int PMAP_ENTER_NOSLEEP ;
 TYPE_1__* _pmap_allocpte (int ,unsigned int,int) ;
 int ** pmap_pde (int ,int ) ;
 unsigned int pmap_pde_pindex (int ) ;

__attribute__((used)) static vm_page_t
pmap_allocpte(pmap_t pmap, vm_offset_t va, u_int flags)
{
 unsigned ptepindex;
 pd_entry_t *pde;
 vm_page_t m;




 ptepindex = pmap_pde_pindex(va);
retry:



 pde = pmap_pde(pmap, va);





 if (pde != ((void*)0) && *pde != ((void*)0)) {
  m = PHYS_TO_VM_PAGE(MIPS_DIRECT_TO_PHYS(*pde));
  m->ref_count++;
 } else {




  m = _pmap_allocpte(pmap, ptepindex, flags);
  if (m == ((void*)0) && (flags & PMAP_ENTER_NOSLEEP) == 0)
   goto retry;
 }
 return (m);
}
