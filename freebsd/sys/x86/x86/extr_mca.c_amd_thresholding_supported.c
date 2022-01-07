
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMDRAS_SCALABLE_MCA ;
 int CPUID_TO_FAMILY (int ) ;
 scalar_t__ CPU_VENDOR_AMD ;
 int amd_rascap ;
 int cpu_id ;
 scalar_t__ cpu_vendor_id ;

__attribute__((used)) static inline bool
amd_thresholding_supported(void)
{
 if (cpu_vendor_id != CPU_VENDOR_AMD)
  return (0);







 if (CPUID_TO_FAMILY(cpu_id) >= 0x10 && CPUID_TO_FAMILY(cpu_id) <= 0x16)
  return (1);
 if (CPUID_TO_FAMILY(cpu_id) >= 0x17)
  return ((amd_rascap & AMDRAS_SCALABLE_MCA) != 0);
 return (0);
}
