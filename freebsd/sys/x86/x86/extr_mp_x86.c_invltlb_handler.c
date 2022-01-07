
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 size_t PCPU_GET (int ) ;
 int PCPU_SET (int ,int ) ;
 int cpuid ;
 int invltlb () ;
 int invltlb_glob () ;
 int ** ipi_invltlb_counts ;
 scalar_t__ kernel_pmap ;
 int smp_tlb_done ;
 int smp_tlb_generation ;
 scalar_t__ smp_tlb_pmap ;
 int * xhits_gbl ;

void
invltlb_handler(void)
{
 uint32_t generation;
 generation = smp_tlb_generation;
 if (smp_tlb_pmap == kernel_pmap)
  invltlb_glob();

 else
  invltlb();

 PCPU_SET(smp_tlb_done, generation);
}
