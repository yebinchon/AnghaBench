
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int CPUID_HTT ;
 int CPUID_HTT_CORES ;
 int KASSERT (int,char*) ;
 scalar_t__ core_id_shift ;
 int cpu_feature ;
 int cpu_high ;
 int cpu_procinfo ;
 int cpuid_count (int,int ,int*) ;
 scalar_t__ mask_width (int) ;
 scalar_t__ pkg_id_shift ;

__attribute__((used)) static void
topo_probe_intel_0x4(void)
{
 u_int p[4];
 int max_cores;
 int max_logical;


 max_logical = (cpu_feature & CPUID_HTT) != 0 ?
     (cpu_procinfo & CPUID_HTT_CORES) >> 16 : 1;
 if (max_logical <= 1)
  return;

 if (cpu_high >= 0x4) {
  cpuid_count(0x04, 0, p);
  max_cores = ((p[0] >> 26) & 0x3f) + 1;
 } else
  max_cores = 1;

 core_id_shift = mask_width(max_logical/max_cores);
 KASSERT(core_id_shift >= 0,
     ("intel topo: max_cores > max_logical\n"));
 pkg_id_shift = core_id_shift + mask_width(max_cores);
}
