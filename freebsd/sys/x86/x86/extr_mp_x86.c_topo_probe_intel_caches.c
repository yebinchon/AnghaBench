
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int present; void* id_shift; } ;


 int add_deterministic_cache (int,int,int) ;
 TYPE_1__* caches ;
 int cpu_high ;
 int cpuid_count (int,int,int*) ;
 void* pkg_id_shift ;

__attribute__((used)) static void
topo_probe_intel_caches(void)
{
 u_int p[4];
 int level;
 int share_count;
 int type;
 int i;

 if (cpu_high < 0x4) {






  caches[0].id_shift = pkg_id_shift;
  caches[0].present = 1;
  caches[1].id_shift = pkg_id_shift;
  caches[1].present = 1;
  return;
 }

 for (i = 0; ; i++) {
  cpuid_count(0x4, i, p);
  type = p[0] & 0x1f;
  level = (p[0] >> 5) & 0x7;
  share_count = 1 + ((p[0] >> 14) & 0xfff);

  if (!add_deterministic_cache(type, level, share_count))
   break;
 }
}
