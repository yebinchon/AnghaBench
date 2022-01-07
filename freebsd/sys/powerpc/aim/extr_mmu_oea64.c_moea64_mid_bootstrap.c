
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_offset_t ;
struct pvo_entry {int dummy; } ;
typedef int mmu_t ;
struct TYPE_9__ {int pmap_pvo; int pm_active; struct TYPE_9__* pmap_phys; scalar_t__* pm_sr; } ;
struct TYPE_7__ {TYPE_1__* slb; } ;
struct TYPE_8__ {TYPE_2__ pc_aim; } ;
struct TYPE_6__ {scalar_t__ slbe; scalar_t__ slbv; } ;


 int CPU_FILL (int *) ;
 scalar_t__ EMPTY_SEGMENT ;
 int KERNEL_VSIDBITS ;
 int MTX_DEF ;
 int NVSIDS ;
 int PAGE_SIZE ;
 scalar_t__ PHYS_TO_DMAP (uintptr_t) ;
 int PMAP_LOCK_INIT (TYPE_4__*) ;
 int PV_LOCK_COUNT ;
 int RB_INIT (int *) ;
 int VSID_NBPW ;
 scalar_t__ hw_direct_map ;
 TYPE_4__* kernel_pmap ;
 scalar_t__ moea64_bootstrap_alloc (int,int ) ;
 struct pvo_entry* moea64_bpvo_pool ;
 scalar_t__ moea64_bpvo_pool_index ;
 int moea64_bpvo_pool_size ;
 scalar_t__ moea64_pteg_count ;
 scalar_t__ moea64_pteg_mask ;
 int moea64_setup_direct_map (int ,int ,int ) ;
 int moea64_slb_mutex ;
 int* moea64_vsid_bitmap ;
 int mtx_init (int *,char*,int *,int ) ;
 TYPE_3__* pcpup ;
 int * pv_lock ;

void
moea64_mid_bootstrap(mmu_t mmup, vm_offset_t kernelstart, vm_offset_t kernelend)
{
 int i;




 moea64_pteg_mask = moea64_pteg_count - 1;




 mtx_init(&moea64_slb_mutex, "SLB table", ((void*)0), MTX_DEF);
 for (i = 0; i < PV_LOCK_COUNT; i++)
  mtx_init(&pv_lock[i], "page pv", ((void*)0), MTX_DEF);




 moea64_bpvo_pool = (struct pvo_entry *)moea64_bootstrap_alloc(
  moea64_bpvo_pool_size*sizeof(struct pvo_entry), PAGE_SIZE);
 moea64_bpvo_pool_index = 0;


 if (hw_direct_map)
  moea64_bpvo_pool = (struct pvo_entry *)
      PHYS_TO_DMAP((uintptr_t)moea64_bpvo_pool);





 moea64_vsid_bitmap[(KERNEL_VSIDBITS & (NVSIDS - 1)) / VSID_NBPW]
  |= 1 << (KERNEL_VSIDBITS % VSID_NBPW);
 moea64_vsid_bitmap[0] |= 1;
 for (i = 0; i < 16; i++)
  kernel_pmap->pm_sr[i] = EMPTY_SEGMENT + i;


 kernel_pmap->pmap_phys = kernel_pmap;
 CPU_FILL(&kernel_pmap->pm_active);
 RB_INIT(&kernel_pmap->pmap_pvo);

 PMAP_LOCK_INIT(kernel_pmap);





 moea64_setup_direct_map(mmup, kernelstart, kernelend);
}
