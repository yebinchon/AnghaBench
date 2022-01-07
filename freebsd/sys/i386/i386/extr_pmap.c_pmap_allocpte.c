
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef size_t vm_offset_t ;
typedef size_t u_int ;
typedef TYPE_2__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_10__ {int* pm_pdir; } ;
struct TYPE_9__ {int ref_count; } ;


 size_t PDRSHIFT ;
 int PG_FRAME ;
 int PG_PS ;
 TYPE_1__* PHYS_TO_VM_PAGE (int) ;
 size_t PMAP_ENTER_NOSLEEP ;
 TYPE_1__* _pmap_allocpte (TYPE_2__*,size_t,size_t) ;
 int pmap_demote_pde (TYPE_2__*,int*,size_t) ;

__attribute__((used)) static vm_page_t
pmap_allocpte(pmap_t pmap, vm_offset_t va, u_int flags)
{
 u_int ptepindex;
 pd_entry_t ptepa;
 vm_page_t m;




 ptepindex = va >> PDRSHIFT;
retry:



 ptepa = pmap->pm_pdir[ptepindex];





 if (ptepa & PG_PS) {
  (void)pmap_demote_pde(pmap, &pmap->pm_pdir[ptepindex], va);
  ptepa = pmap->pm_pdir[ptepindex];
 }





 if (ptepa) {
  m = PHYS_TO_VM_PAGE(ptepa & PG_FRAME);
  m->ref_count++;
 } else {




  m = _pmap_allocpte(pmap, ptepindex, flags);
  if (m == ((void*)0) && (flags & PMAP_ENTER_NOSLEEP) == 0)
   goto retry;
 }
 return (m);
}
