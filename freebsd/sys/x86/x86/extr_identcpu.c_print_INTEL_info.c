
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 int cpu_exthigh ;
 int cpu_high ;
 int do_cpuid (int,scalar_t__*) ;
 int print_INTEL_TLB (scalar_t__) ;
 int printf (char*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
print_INTEL_info(void)
{
 u_int regs[4];
 u_int rounds, regnum;
 u_int nwaycode, nway;

 if (cpu_high >= 2) {
  rounds = 0;
  do {
   do_cpuid(0x2, regs);
   if (rounds == 0 && (rounds = (regs[0] & 0xff)) == 0)
    break;

   for (regnum = 0; regnum <= 3; ++regnum) {
    if (regs[regnum] & (1<<31))
     continue;
    if (regnum != 0)
     print_INTEL_TLB(regs[regnum] & 0xff);
    print_INTEL_TLB((regs[regnum] >> 8) & 0xff);
    print_INTEL_TLB((regs[regnum] >> 16) & 0xff);
    print_INTEL_TLB((regs[regnum] >> 24) & 0xff);
   }
  } while (--rounds > 0);
 }

 if (cpu_exthigh >= 0x80000006) {
  do_cpuid(0x80000006, regs);
  nwaycode = (regs[2] >> 12) & 0x0f;
  if (nwaycode >= 0x02 && nwaycode <= 0x08)
   nway = 1 << (nwaycode / 2);
  else
   nway = 0;
  printf("L2 cache: %u kbytes, %u-way associative, %u bytes/line\n",
      (regs[2] >> 16) & 0xffff, nway, regs[2] & 0xff);
 }
}
