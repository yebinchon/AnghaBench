
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pmap_t ;
typedef int cpuset_t ;


 int IPI_INVLRNG ;
 int PAGE_SIZE ;
 int ipi_range ;
 int ipi_range_size ;
 scalar_t__ smp_started ;
 int smp_targeted_tlb_shootdown (int ,int ,int ,int,int) ;

void
smp_masked_invlpg_range(cpuset_t mask, vm_offset_t addr1, vm_offset_t addr2,
    pmap_t pmap)
{

 if (smp_started) {
  smp_targeted_tlb_shootdown(mask, IPI_INVLRNG, pmap,
      addr1, addr2);




 }
}
