
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int pt_entry_t ;
typedef scalar_t__ pd_entry_t ;
struct TYPE_5__ {TYPE_1__* pm_asid; int pm_pvchunk; int pm_active; scalar_t__* pm_segtab; } ;
struct TYPE_4__ {scalar_t__ gen; int asid; } ;


 int CPU_FILL (int *) ;
 int NKPT ;
 int NPDEPG ;
 int NPTEPG ;
 int PAGE_SIZE ;
 int PMAP_ASID_RESERVED ;
 int PMAP_LOCK_INIT (TYPE_2__*) ;
 int PTE_G ;
 int TAILQ_INIT (int *) ;
 int VM_MIN_KERNEL_ADDRESS ;
 int howmany (int,int) ;
 TYPE_2__* kernel_pmap ;
 scalar_t__* kernel_segmap ;
 int kernel_vm_end ;
 int nkpt ;
 int pmap_seg_index (int ) ;
 scalar_t__ pmap_steal_memory (int) ;

__attribute__((used)) static void
pmap_create_kernel_pagetable(void)
{
 int i, j;
 vm_offset_t ptaddr;
 pt_entry_t *pte;
 kernel_segmap = (pd_entry_t *)pmap_steal_memory(PAGE_SIZE);
 nkpt = NKPT;
 ptaddr = pmap_steal_memory(PAGE_SIZE * nkpt);
 for (i = 0, pte = (pt_entry_t *)ptaddr; i < (nkpt * NPTEPG); i++, pte++)
  *pte = PTE_G;
 for (i = 0, j = pmap_seg_index(VM_MIN_KERNEL_ADDRESS); i < nkpt; i++, j++)
  kernel_segmap[j] = (pd_entry_t)(ptaddr + (i * PAGE_SIZE));


 PMAP_LOCK_INIT(kernel_pmap);
 kernel_pmap->pm_segtab = kernel_segmap;
 CPU_FILL(&kernel_pmap->pm_active);
 TAILQ_INIT(&kernel_pmap->pm_pvchunk);
 kernel_pmap->pm_asid[0].asid = PMAP_ASID_RESERVED;
 kernel_pmap->pm_asid[0].gen = 0;
 kernel_vm_end += nkpt * NPTEPG * PAGE_SIZE;
}
