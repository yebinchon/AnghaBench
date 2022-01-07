
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int APIC_VER_AMD_EXT_SPACE ;
 scalar_t__ CPU_VENDOR_AMD ;
 int LAPIC_EXT_FEATURES ;
 int LAPIC_VERSION ;
 scalar_t__ cpu_vendor_id ;
 int lapic_read32 (int ) ;

__attribute__((used)) static inline uint32_t
amd_read_ext_features(void)
{
 uint32_t version;

 if (cpu_vendor_id != CPU_VENDOR_AMD)
  return (0);
 version = lapic_read32(LAPIC_VERSION);
 if ((version & APIC_VER_AMD_EXT_SPACE) != 0)
  return (lapic_read32(LAPIC_EXT_FEATURES));
 else
  return (0);
}
