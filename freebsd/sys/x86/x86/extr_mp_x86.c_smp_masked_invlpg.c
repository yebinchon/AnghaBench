
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pmap_t ;
typedef int cpuset_t ;


 int IPI_INVLPG ;
 int ipi_page ;
 scalar_t__ smp_started ;
 int smp_targeted_tlb_shootdown (int ,int ,int ,int ,int ) ;

void
smp_masked_invlpg(cpuset_t mask, vm_offset_t addr, pmap_t pmap)
{

 if (smp_started) {
  smp_targeted_tlb_shootdown(mask, IPI_INVLPG, pmap, addr, 0);



 }
}
