
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void MMU_CPU_BOOTSTRAP (int ,int) ;
 int mmu_obj ;

void
pmap_cpu_bootstrap(int ap)
{




 return (MMU_CPU_BOOTSTRAP(mmu_obj, ap));
}
