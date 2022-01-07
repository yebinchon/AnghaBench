
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int uint32_t ;


 scalar_t__ PAGE_SIZE ;
 size_t PCPU_GET (int ) ;
 int PCPU_SET (int ,int ) ;
 int cpuid ;
 int invlpg (scalar_t__) ;
 int ** ipi_invlrng_counts ;
 scalar_t__ kernel_pmap ;
 scalar_t__ smp_tlb_addr1 ;
 scalar_t__ smp_tlb_addr2 ;
 int smp_tlb_done ;
 int smp_tlb_generation ;
 scalar_t__ smp_tlb_pmap ;
 int * xhits_rng ;

void
invlrng_handler(void)
{
 vm_offset_t addr, addr2;
 uint32_t generation;
 addr = smp_tlb_addr1;
 addr2 = smp_tlb_addr2;
 generation = smp_tlb_generation;



  do {
   invlpg(addr);
   addr += PAGE_SIZE;
  } while (addr < addr2);

 PCPU_SET(smp_tlb_done, generation);
}
