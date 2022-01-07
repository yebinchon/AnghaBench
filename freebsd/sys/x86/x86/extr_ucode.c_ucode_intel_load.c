
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int EEXIST ;
 int MSR_BIOS_SIGN ;
 int MSR_BIOS_UPDT_TRIG ;
 int do_cpuid (int ,int *) ;
 int rdmsr (int ) ;
 int wbinvd () ;
 int wrmsr (int ,int) ;
 int wrmsr_safe (int ,int) ;

int
ucode_intel_load(void *data, bool unsafe, uint64_t *nrevp, uint64_t *orevp)
{
 uint64_t nrev, orev;
 uint32_t cpuid[4];

 orev = rdmsr(MSR_BIOS_SIGN) >> 32;





 wbinvd();
 if (unsafe)
  wrmsr_safe(MSR_BIOS_UPDT_TRIG, (uint64_t)(uintptr_t)data);
 else
  wrmsr(MSR_BIOS_UPDT_TRIG, (uint64_t)(uintptr_t)data);
 wrmsr(MSR_BIOS_SIGN, 0);




 do_cpuid(0, cpuid);




 nrev = rdmsr(MSR_BIOS_SIGN) >> 32;
 if (nrevp != ((void*)0))
  *nrevp = nrev;
 if (orevp != ((void*)0))
  *orevp = orev;
 if (nrev <= orev)
  return (EEXIST);
 return (0);
}
