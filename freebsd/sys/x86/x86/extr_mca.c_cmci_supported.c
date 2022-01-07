
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ CPU_VENDOR_INTEL ;
 int MCG_CAP_CMCI_P ;
 scalar_t__ cpu_vendor_id ;

__attribute__((used)) static inline bool
cmci_supported(uint64_t mcg_cap)
{




 if (cpu_vendor_id != CPU_VENDOR_INTEL)
  return (0);
 return ((mcg_cap & MCG_CAP_CMCI_P) != 0);
}
