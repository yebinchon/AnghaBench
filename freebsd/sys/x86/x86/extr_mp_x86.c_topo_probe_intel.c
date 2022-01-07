
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_high ;
 int topo_probe_intel_0x4 () ;
 int topo_probe_intel_0xb () ;
 int topo_probe_intel_caches () ;

__attribute__((used)) static void
topo_probe_intel(void)
{







 if (cpu_high >= 0xb)
  topo_probe_intel_0xb();
 else if (cpu_high >= 0x1)
  topo_probe_intel_0x4();

 topo_probe_intel_caches();
}
