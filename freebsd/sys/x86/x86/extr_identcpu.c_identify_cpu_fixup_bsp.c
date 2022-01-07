
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int cpu_high ;
 int cpu_vendor_id ;
 int do_cpuid (int ,int *) ;
 int find_cpu_vendor_id () ;
 scalar_t__ fix_cpuid () ;

void
identify_cpu_fixup_bsp(void)
{
 u_int regs[4];

 cpu_vendor_id = find_cpu_vendor_id();

 if (fix_cpuid()) {
  do_cpuid(0, regs);
  cpu_high = regs[0];
 }
}
