
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_long ;
struct vm_phys_seg {scalar_t__ end; scalar_t__ start; size_t domain; struct vm_freelist*** free_queues; int * first_page; } ;
struct vm_freelist {int pl; } ;


 int KASSERT (int,char*) ;
 int * PHYS_TO_VM_PAGE (scalar_t__) ;
 int TAILQ_INIT (int *) ;
 scalar_t__ VM_DMA32_BOUNDARY ;
 size_t VM_DMA32_NPAGES_THRESHOLD ;
 size_t VM_FREELIST_DEFAULT ;
 size_t VM_FREELIST_DMA32 ;
 size_t VM_FREELIST_LOWMEM ;
 scalar_t__ VM_LOWMEM_BOUNDARY ;
 int VM_NFREELIST ;
 int VM_NFREEORDER ;
 int VM_NFREEPOOL ;
 scalar_t__ atop (scalar_t__) ;
 int rw_init (int *,char*) ;
 int* vm_freelist_to_flind ;
 int vm_ndomains ;
 int vm_nfreelists ;
 int * vm_page_array ;
 int vm_phys_fictitious_reg_lock ;
 struct vm_freelist**** vm_phys_free_queues ;
 int vm_phys_nsegs ;
 struct vm_phys_seg* vm_phys_segs ;

void
vm_phys_init(void)
{
 struct vm_freelist *fl;
 struct vm_phys_seg *end_seg, *prev_seg, *seg, *tmp_seg;
 u_long npages;
 int dom, flind, freelist, oind, pind, segind;
 npages = 0;
 for (segind = vm_phys_nsegs - 1; segind >= 0; segind--) {
  seg = &vm_phys_segs[segind];
  {
   npages += atop(seg->end - seg->start);
   vm_freelist_to_flind[VM_FREELIST_DEFAULT] = 1;
  }
 }

 for (freelist = 1; freelist < VM_NFREELIST; freelist++) {
  vm_freelist_to_flind[freelist] +=
      vm_freelist_to_flind[freelist - 1];
 }
 vm_nfreelists = vm_freelist_to_flind[VM_NFREELIST - 1];
 KASSERT(vm_nfreelists > 0, ("vm_phys_init: no free lists"));

 for (freelist = 0; freelist < VM_NFREELIST; freelist++)
  vm_freelist_to_flind[freelist]--;
 for (segind = 0; segind < vm_phys_nsegs; segind++) {
  seg = &vm_phys_segs[segind];




  seg->first_page = PHYS_TO_VM_PAGE(seg->start);
  {
   flind = vm_freelist_to_flind[VM_FREELIST_DEFAULT];
   KASSERT(flind >= 0,
       ("vm_phys_init: DEFAULT flind < 0"));
  }
  seg->free_queues = &vm_phys_free_queues[seg->domain][flind];
 }





 prev_seg = vm_phys_segs;
 seg = &vm_phys_segs[1];
 end_seg = &vm_phys_segs[vm_phys_nsegs];
 while (seg < end_seg) {
  if (prev_seg->end == seg->start &&
      prev_seg->free_queues == seg->free_queues) {
   prev_seg->end = seg->end;
   KASSERT(prev_seg->domain == seg->domain,
       ("vm_phys_init: free queues cannot span domains"));
   vm_phys_nsegs--;
   end_seg--;
   for (tmp_seg = seg; tmp_seg < end_seg; tmp_seg++)
    *tmp_seg = *(tmp_seg + 1);
  } else {
   prev_seg = seg;
   seg++;
  }
 }




 for (dom = 0; dom < vm_ndomains; dom++) {
  for (flind = 0; flind < vm_nfreelists; flind++) {
   for (pind = 0; pind < VM_NFREEPOOL; pind++) {
    fl = vm_phys_free_queues[dom][flind][pind];
    for (oind = 0; oind < VM_NFREEORDER; oind++)
     TAILQ_INIT(&fl[oind].pl);
   }
  }
 }

 rw_init(&vm_phys_fictitious_reg_lock, "vmfctr");
}
