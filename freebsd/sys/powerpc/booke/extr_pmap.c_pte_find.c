
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int pte_t ;
typedef TYPE_1__* pmap_t ;
typedef int mmu_t ;
struct TYPE_3__ {int ** pm_pdir; } ;


 int KASSERT (int ,char*) ;
 unsigned int PDIR_IDX (int ) ;
 unsigned int PTBL_IDX (int ) ;

__attribute__((used)) static pte_t *
pte_find(mmu_t mmu, pmap_t pmap, vm_offset_t va)
{
 unsigned int pdir_idx = PDIR_IDX(va);
 unsigned int ptbl_idx = PTBL_IDX(va);

 KASSERT((pmap != ((void*)0)), ("pte_find: invalid pmap"));

 if (pmap->pm_pdir[pdir_idx])
  return (&(pmap->pm_pdir[pdir_idx][ptbl_idx]));

 return (((void*)0));
}
