
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union savefpu {int dummy; } savefpu ;
typedef void* u_int ;


 void* cpu_feature2 ;
 int cpu_max_ext_state_size ;
 int cpuid_count (int,int,void**) ;
 int do_cpuid (int,void**) ;
 scalar_t__ use_xsave ;

__attribute__((used)) static void
npxinit_bsp2(void)
{
 u_int cp[4];

 if (use_xsave) {
  cpuid_count(0xd, 0x0, cp);
  cpu_max_ext_state_size = cp[1];




  do_cpuid(1, cp);
  cpu_feature2 = cp[2];
 } else
  cpu_max_ext_state_size = sizeof(union savefpu);
}
