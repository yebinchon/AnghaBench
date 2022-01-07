
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ u_int ;
typedef int pd_entry_t ;
struct TYPE_5__ {int pm_active; } ;
struct TYPE_4__ {int * pm_l1; } ;


 int CPU_FILL (int *) ;
 int DPCPU_SIZE ;
 int KASSERT (int,char*) ;
 scalar_t__ KERNBASE ;
 scalar_t__ L1_SHIFT ;
 int L2_SIZE ;
 scalar_t__ Ln_ADDR_MASK ;
 scalar_t__ Maxmem ;
 scalar_t__ PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PMAP_LOCK_INIT (TYPE_2__*) ;
 scalar_t__ VM_MAX_KERNEL_ADDRESS ;
 int alloc_pages (scalar_t__,int) ;
 scalar_t__ atop (scalar_t__) ;
 int dpcpu_init (void*,int ) ;
 scalar_t__* dump_avail ;
 TYPE_2__* kernel_pmap ;
 TYPE_1__ kernel_pmap_store ;
 void* kernel_vm_end ;
 void* msgbufp ;
 int msgbufsize ;
 scalar_t__* phys_avail ;
 scalar_t__* physmap ;
 int physmap_idx ;
 scalar_t__ physmem ;
 int pmap_bootstrap_dmap (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ pmap_bootstrap_l3 (scalar_t__,scalar_t__,scalar_t__) ;
 int pmap_early_page_idx (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ pmap_early_vtophys (scalar_t__,scalar_t__) ;
 int printf (char*,scalar_t__,...) ;
 int pvh_global_lock ;
 int realmem ;
 int round_page (int ) ;
 void* roundup2 (scalar_t__,int) ;
 int rw_init (int *,char*) ;
 int sfence_vma () ;
 void* virtual_avail ;
 scalar_t__ virtual_end ;

void
pmap_bootstrap(vm_offset_t l1pt, vm_paddr_t kernstart, vm_size_t kernlen)
{
 u_int l1_slot, l2_slot, avail_slot, map_slot;
 vm_offset_t freemempos;
 vm_offset_t dpcpu, msgbufpv;
 vm_paddr_t end, max_pa, min_pa, pa, start;
 int i;

 printf("pmap_bootstrap %lx %lx %lx\n", l1pt, kernstart, kernlen);
 printf("%lx\n", l1pt);
 printf("%lx\n", (KERNBASE >> L1_SHIFT) & Ln_ADDR_MASK);


 kernel_pmap_store.pm_l1 = (pd_entry_t *)l1pt;
 PMAP_LOCK_INIT(kernel_pmap);

 rw_init(&pvh_global_lock, "pmap pv global");

 CPU_FILL(&kernel_pmap->pm_active);


 min_pa = max_pa = kernstart;





 for (i = 0; i < physmap_idx * 2; i += 2) {
  if (physmap[i] == physmap[i + 1])
   continue;
  if (physmap[i] <= min_pa)
   min_pa = physmap[i];
  if (physmap[i + 1] > max_pa)
   max_pa = physmap[i + 1];
 }
 printf("physmap_idx %lx\n", physmap_idx);
 printf("min_pa %lx\n", min_pa);
 printf("max_pa %lx\n", max_pa);


 pmap_bootstrap_dmap(l1pt, min_pa, max_pa);






 (void)pmap_early_page_idx(l1pt, KERNBASE, &l1_slot, &l2_slot);


 KASSERT(l2_slot == 0, ("The L2 index is non-zero"));

 freemempos = roundup2(KERNBASE + kernlen, PAGE_SIZE);


 freemempos = pmap_bootstrap_l3(l1pt,
     VM_MAX_KERNEL_ADDRESS - L2_SIZE, freemempos);

 sfence_vma();







 (dpcpu) = freemempos; freemempos += (DPCPU_SIZE / PAGE_SIZE * PAGE_SIZE); memset((char *)(dpcpu), 0, ((DPCPU_SIZE / PAGE_SIZE) * PAGE_SIZE));;
 dpcpu_init((void *)dpcpu, 0);


 (msgbufpv) = freemempos; freemempos += (round_page(msgbufsize) / PAGE_SIZE * PAGE_SIZE); memset((char *)(msgbufpv), 0, ((round_page(msgbufsize) / PAGE_SIZE) * PAGE_SIZE));;
 msgbufp = (void *)msgbufpv;

 virtual_avail = roundup2(freemempos, L2_SIZE);
 virtual_end = VM_MAX_KERNEL_ADDRESS - L2_SIZE;
 kernel_vm_end = virtual_avail;

 pa = pmap_early_vtophys(l1pt, freemempos);


 for (avail_slot = map_slot = physmem = 0; map_slot < physmap_idx * 2;
     map_slot += 2) {
  start = physmap[map_slot];
  end = physmap[map_slot + 1];

  if (start == end)
   continue;
  dump_avail[map_slot] = start;
  dump_avail[map_slot + 1] = end;
  realmem += atop((vm_offset_t)(end - start));

  if (start >= kernstart && end <= pa)
   continue;

  if (start < kernstart && end > kernstart)
   end = kernstart;
  else if (start < pa && end > pa)
   start = pa;
  phys_avail[avail_slot] = start;
  phys_avail[avail_slot + 1] = end;
  physmem += (end - start) >> PAGE_SHIFT;
  avail_slot += 2;

  if (end != physmap[map_slot + 1] && end > pa) {
   phys_avail[avail_slot] = pa;
   phys_avail[avail_slot + 1] = physmap[map_slot + 1];
   physmem += (physmap[map_slot + 1] - pa) >> PAGE_SHIFT;
   avail_slot += 2;
  }
 }
 phys_avail[avail_slot] = 0;
 phys_avail[avail_slot + 1] = 0;






 Maxmem = atop(phys_avail[avail_slot - 1]);
}
