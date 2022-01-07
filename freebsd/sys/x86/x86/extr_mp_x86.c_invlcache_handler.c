
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 size_t PCPU_GET (int ) ;
 int PCPU_SET (int ,int ) ;
 int cpuid ;
 int ** ipi_invlcache_counts ;
 int smp_tlb_done ;
 int smp_tlb_generation ;
 int wbinvd () ;

void
invlcache_handler(void)
{
 uint32_t generation;
 generation = smp_tlb_generation;
 wbinvd();
 PCPU_SET(smp_tlb_done, generation);
}
