
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;
struct spglist {int dummy; } ;
typedef scalar_t__ pmap_t ;
typedef int pd_entry_t ;


 int PG_FRAME ;
 int PHYS_TO_VM_PAGE (int) ;
 scalar_t__ kernel_pmap ;
 int* pmap_pde (scalar_t__,int ) ;
 int pmap_unwire_ptp (scalar_t__,int ,struct spglist*) ;

__attribute__((used)) static int
pmap_unuse_pt(pmap_t pmap, vm_offset_t va, struct spglist *free)
{
 pd_entry_t ptepde;
 vm_page_t mpte;

 if (pmap == kernel_pmap)
  return (0);
 ptepde = *pmap_pde(pmap, va);
 mpte = PHYS_TO_VM_PAGE(ptepde & PG_FRAME);
 return (pmap_unwire_ptp(pmap, mpte, free));
}
