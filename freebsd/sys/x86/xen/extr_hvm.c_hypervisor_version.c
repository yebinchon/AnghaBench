
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ cpuid_base ;
 int do_cpuid (scalar_t__,int*) ;
 int hypervisor_quirks (int,int) ;
 int printf (char*,int,int) ;

__attribute__((used)) static void
hypervisor_version(void)
{
 uint32_t regs[4];
 int major, minor;

 do_cpuid(cpuid_base + 1, regs);

 major = regs[0] >> 16;
 minor = regs[0] & 0xffff;
 printf("XEN: Hypervisor version %d.%d detected.\n", major, minor);

 hypervisor_quirks(major, minor);
}
