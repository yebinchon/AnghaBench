
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int CPUID_TYPE_CORE ;
 int CPUID_TYPE_SMT ;
 int core_id_shift ;
 int cpuid_count (int,int,int*) ;
 int pkg_id_shift ;
 int printf (char*,...) ;
 int topo_probe_intel_0x4 () ;

__attribute__((used)) static void
topo_probe_intel_0xb(void)
{
 u_int p[4];
 int bits;
 int type;
 int i;


 cpuid_count(0x0b, 0, p);
 if (p[1] == 0) {
  topo_probe_intel_0x4();
  return;
 }


 for (i = 0; ; i++) {
  cpuid_count(0x0b, i, p);

  bits = p[0] & 0x1f;
  type = (p[2] >> 8) & 0xff;

  if (type == 0)
   break;


  if (type == CPUID_TYPE_SMT)
   core_id_shift = bits;
  else if (type == CPUID_TYPE_CORE)
   pkg_id_shift = bits;
  else
   printf("unknown CPU level type %d\n", type);
 }

 if (pkg_id_shift < core_id_shift) {
  printf("WARNING: core covers more APIC IDs than a package\n");
  core_id_shift = pkg_id_shift;
 }
}
