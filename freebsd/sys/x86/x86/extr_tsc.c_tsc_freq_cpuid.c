
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;


 int cpu_high ;
 int do_cpuid (int,int*) ;
 int tsc_freq ;

__attribute__((used)) static bool
tsc_freq_cpuid(void)
{
 u_int regs[4];

 if (cpu_high < 0x15)
  return (0);
 do_cpuid(0x15, regs);
 if (regs[0] != 0 && regs[1] != 0 && regs[2] != 0) {
  tsc_freq = (uint64_t)regs[2] * regs[1] / regs[0];
  return (1);
 }

 if (cpu_high < 0x16)
  return (0);
 do_cpuid(0x16, regs);
 if (regs[0] != 0) {
  tsc_freq = (uint64_t)regs[0] * 1000000;
  return (1);
 }

 return (0);
}
