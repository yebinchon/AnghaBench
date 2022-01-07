
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int do_cpuid (int,int*) ;
 int memcmp (char*,int*,int) ;

__attribute__((used)) static uint32_t
xen_hvm_cpuid_base(void)
{
 uint32_t base, regs[4];

 for (base = 0x40000000; base < 0x40010000; base += 0x100) {
  do_cpuid(base, regs);
  if (!memcmp("XenVMMXenVMM", &regs[1], 12)
      && (regs[0] - base) >= 2)
   return (base);
 }
 return (0);
}
