
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ pte_t ;
typedef int mmu_t ;


 int KASSERT (int,char*) ;
 scalar_t__ PCPU_GET (int ) ;
 int critical_exit () ;
 int kernel_pmap ;
 scalar_t__* pte_find (int ,int ,scalar_t__) ;
 int qmap_addr ;

__attribute__((used)) static void
mmu_booke_quick_remove_page(mmu_t mmu, vm_offset_t addr)
{

 pte_t *pte;

 pte = pte_find(mmu, kernel_pmap, addr);

 KASSERT(PCPU_GET(qmap_addr) == addr,
     ("mmu_booke_quick_remove_page: invalid address"));
 KASSERT(*pte != 0,
     ("mmu_booke_quick_remove_page: PTE not in use"));

 *pte = 0;
 critical_exit();

}
