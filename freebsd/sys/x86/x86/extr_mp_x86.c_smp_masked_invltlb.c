
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmap_t ;
typedef int cpuset_t ;


 int IPI_INVLTLB ;
 int ipi_global ;
 scalar_t__ smp_started ;
 int smp_targeted_tlb_shootdown (int ,int ,int ,int ,int ) ;

void
smp_masked_invltlb(cpuset_t mask, pmap_t pmap)
{

 if (smp_started) {
  smp_targeted_tlb_shootdown(mask, IPI_INVLTLB, pmap, 0, 0);



 }
}
