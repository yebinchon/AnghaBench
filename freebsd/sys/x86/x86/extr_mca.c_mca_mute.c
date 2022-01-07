
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_record {scalar_t__ mr_bank; int mr_status; } ;


 int CPUID_TO_FAMILY (int ) ;
 int CPUID_TO_MODEL (int ) ;
 scalar_t__ CPU_VENDOR_INTEL ;
 int cpu_id ;
 scalar_t__ cpu_vendor_id ;
 int intel6h_HSD131 ;

__attribute__((used)) static int
mca_mute(const struct mca_record *rec)
{
 if (cpu_vendor_id == CPU_VENDOR_INTEL &&
     CPUID_TO_FAMILY(cpu_id) == 0x6 &&
     (CPUID_TO_MODEL(cpu_id) == 0x3c ||
     CPUID_TO_MODEL(cpu_id) == 0x3d ||
     CPUID_TO_MODEL(cpu_id) == 0x45 ||
     CPUID_TO_MODEL(cpu_id) == 0x46) &&
     rec->mr_bank == 0 &&
     (rec->mr_status & 0xa0000000ffffffff) == 0x80000000000f0005 &&
     !intel6h_HSD131)
      return (1);

 return (0);
}
