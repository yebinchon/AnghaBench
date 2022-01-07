
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CPUID_TO_FAMILY (int ) ;
 int CPUID_TO_MODEL (int ) ;
 scalar_t__ CPU_VENDOR_AMD ;
 scalar_t__ CPU_VENDOR_INTEL ;
 int IA32_MISC_EN_LIMCPUID ;
 int MSR_EXTFEATURES ;
 int MSR_IA32_MISC_ENABLE ;
 scalar_t__ VM_GUEST_NO ;
 int cpu_id ;
 scalar_t__ cpu_vendor_id ;
 int rdmsr (int ) ;
 scalar_t__ vm_guest ;
 int wrmsr (int ,int) ;

bool
fix_cpuid(void)
{
 uint64_t msr;







 if (cpu_vendor_id == CPU_VENDOR_INTEL &&
     ((CPUID_TO_FAMILY(cpu_id) == 0xf &&
     CPUID_TO_MODEL(cpu_id) >= 0x3) ||
     (CPUID_TO_FAMILY(cpu_id) == 0x6 &&
     CPUID_TO_MODEL(cpu_id) >= 0xe))) {
  msr = rdmsr(MSR_IA32_MISC_ENABLE);
  if ((msr & IA32_MISC_EN_LIMCPUID) != 0) {
   msr &= ~IA32_MISC_EN_LIMCPUID;
   wrmsr(MSR_IA32_MISC_ENABLE, msr);
   return (1);
  }
 }
 if (vm_guest == VM_GUEST_NO && cpu_vendor_id == CPU_VENDOR_AMD &&
     CPUID_TO_FAMILY(cpu_id) == 0x15) {
  msr = rdmsr(MSR_EXTFEATURES);
  if ((msr & ((uint64_t)1 << 54)) == 0) {
   msr |= (uint64_t)1 << 54;
   wrmsr(MSR_EXTFEATURES, msr);
   return (1);
  }
 }
 return (0);
}
