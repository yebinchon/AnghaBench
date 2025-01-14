
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
struct vm_phys_seg {scalar_t__ start; int domain; scalar_t__ end; } ;


 int KASSERT (int,char*) ;
 scalar_t__ VM_PHYSSEG_MAX ;
 int vm_ndomains ;
 scalar_t__ vm_phys_nsegs ;
 struct vm_phys_seg* vm_phys_segs ;

__attribute__((used)) static void
_vm_phys_create_seg(vm_paddr_t start, vm_paddr_t end, int domain)
{
 struct vm_phys_seg *seg;

 KASSERT(vm_phys_nsegs < VM_PHYSSEG_MAX,
     ("vm_phys_create_seg: increase VM_PHYSSEG_MAX"));
 KASSERT(domain >= 0 && domain < vm_ndomains,
     ("vm_phys_create_seg: invalid domain provided"));
 seg = &vm_phys_segs[vm_phys_nsegs++];
 while (seg > vm_phys_segs && (seg - 1)->start >= end) {
  *seg = *(seg - 1);
  seg--;
 }
 seg->start = start;
 seg->end = end;
 seg->domain = domain;
}
