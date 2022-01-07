
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vm_size_t ;
typedef size_t vm_paddr_t ;
typedef size_t vm_offset_t ;
typedef int mmu_t ;


 int _TLB_ENTRY_IO ;
 scalar_t__ do_minidump ;
 size_t rounddown2 (size_t,size_t) ;
 int tlb1_set_entry (size_t,size_t,size_t,int ) ;

void
mmu_booke_dumpsys_map(mmu_t mmu, vm_paddr_t pa, size_t sz, void **va)
{
 vm_paddr_t ppa;
 vm_offset_t ofs;
 vm_size_t gran;


 if (do_minidump) {
  *va = (void *)(vm_offset_t)pa;
  return;
 }



 gran = 256 * 1024 * 1024;
 ppa = rounddown2(pa, gran);
 ofs = pa - ppa;
 *va = (void *)gran;
 tlb1_set_entry((vm_offset_t)va, ppa, gran, _TLB_ENTRY_IO);

 if (sz > (gran - ofs))
  tlb1_set_entry((vm_offset_t)(va + gran), ppa + gran, gran,
      _TLB_ENTRY_IO);
}
