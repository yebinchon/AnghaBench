
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int BUS_PROBE_SPECIFIC ;
 int SPR_PIR ;
 int cpu_idle_hook ;
 int mfspr (int ) ;
 int pmap_mmu_install (char*,int ) ;
 int ps3_boot_pir ;
 int ps3_cpu_idle ;

__attribute__((used)) static int
ps3_attach(platform_t plat)
{

 pmap_mmu_install("mmu_ps3", BUS_PROBE_SPECIFIC);
 cpu_idle_hook = ps3_cpu_idle;


 ps3_boot_pir = mfspr(SPR_PIR);

 return (0);
}
