
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
struct tte {int tte_data; int tte_vpn; } ;
struct TYPE_5__ {scalar_t__ color; } ;
struct TYPE_6__ {int flags; TYPE_1__ md; } ;


 int ASI_PHYS_USE_EC ;
 scalar_t__ DCACHE_COLOR (scalar_t__) ;
 int KASSERT (int,char*) ;
 int PAGE_SIZE ;
 int PG_FICTITIOUS ;
 int PMAP_LOCK (int ) ;
 int PMAP_STATS_INC (int ) ;
 int PMAP_UNLOCK (int ) ;
 int TD_8K ;
 int TD_CP ;
 int TD_CV ;
 int TD_PA (scalar_t__) ;
 int TD_V ;
 int TD_W ;
 scalar_t__ TLB_PHYS_TO_DIRECT (scalar_t__) ;
 int TS_8K ;
 int TV_VPN (scalar_t__,int ) ;
 scalar_t__ VM_PAGE_TO_PHYS (TYPE_2__*) ;
 int aszero (int ,scalar_t__,int) ;
 int bzero (void*,int) ;
 scalar_t__ dcache_color_ignore ;
 int kernel_pmap ;
 int pmap_nzero_page_area ;
 int pmap_nzero_page_area_c ;
 int pmap_nzero_page_area_nc ;
 int pmap_nzero_page_area_oc ;
 scalar_t__ pmap_temp_map_1 ;
 int tlb_page_demap (int ,scalar_t__) ;
 struct tte* tsb_kvtotte (scalar_t__) ;

void
pmap_zero_page_area(vm_page_t m, int off, int size)
{
 struct tte *tp;
 vm_offset_t va;
 vm_paddr_t pa;

 KASSERT((m->flags & PG_FICTITIOUS) == 0,
     ("pmap_zero_page_area: fake page"));
 KASSERT(off + size <= PAGE_SIZE, ("pmap_zero_page_area: bad off/size"));
 PMAP_STATS_INC(pmap_nzero_page_area);
 pa = VM_PAGE_TO_PHYS(m);
 if (dcache_color_ignore != 0 || m->md.color == DCACHE_COLOR(pa)) {
  PMAP_STATS_INC(pmap_nzero_page_area_c);
  va = TLB_PHYS_TO_DIRECT(pa);
  bzero((void *)(va + off), size);
 } else if (m->md.color == -1) {
  PMAP_STATS_INC(pmap_nzero_page_area_nc);
  aszero(ASI_PHYS_USE_EC, pa + off, size);
 } else {
  PMAP_STATS_INC(pmap_nzero_page_area_oc);
  PMAP_LOCK(kernel_pmap);
  va = pmap_temp_map_1 + (m->md.color * PAGE_SIZE);
  tp = tsb_kvtotte(va);
  tp->tte_data = TD_V | TD_8K | TD_PA(pa) | TD_CP | TD_CV | TD_W;
  tp->tte_vpn = TV_VPN(va, TS_8K);
  bzero((void *)(va + off), size);
  tlb_page_demap(kernel_pmap, va);
  PMAP_UNLOCK(kernel_pmap);
 }
}
