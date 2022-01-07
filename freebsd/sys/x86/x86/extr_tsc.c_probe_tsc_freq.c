
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint16_t ;
typedef int intmax_t ;
struct TYPE_2__ {void* tc_get_timecount; } ;


 int ACPI_FADT_LEGACY_DEVICES ;
 int AMDPM_TSC_INVARIANT ;
 int CPUID_PERF_STAT ;
 int CPUID_SSE2 ;
 int CPUID_TO_FAMILY (int ) ;
 int CPUID_TO_MODEL (int ) ;



 int DELAY (int) ;
 int MSR_APERF ;
 int MSR_MPERF ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 scalar_t__ VM_GUEST_NO ;
 scalar_t__ VM_GUEST_VMWARE ;
 scalar_t__ acpi_get_fadt_bootflags (int*) ;
 int amd_pminfo ;
 scalar_t__ bootverbose ;
 int cpu_feature ;
 int cpu_id ;
 int cpu_power_ecx ;
 int cpu_vendor_id ;
 int printf (char*,...) ;
 int rdmsr (int) ;
 scalar_t__ rdtsc () ;
 scalar_t__ tsc_freq ;
 scalar_t__ tsc_freq_cpuid () ;
 int tsc_freq_intel () ;
 int tsc_freq_vmware () ;
 void* tsc_get_timecount_lfence ;
 void* tsc_get_timecount_mfence ;
 int tsc_is_invariant ;
 int tsc_perf_stat ;
 int tsc_skip_calibration ;
 TYPE_1__ tsc_timecounter ;
 scalar_t__ vm_guest ;
 int wrmsr (int,int ) ;

__attribute__((used)) static void
probe_tsc_freq(void)
{
 uint64_t tsc1, tsc2;
 uint16_t bootflags;

 if (cpu_power_ecx & CPUID_PERF_STAT) {




  wrmsr(MSR_MPERF, 0);
  wrmsr(MSR_APERF, 0);
  DELAY(10);
  if (rdmsr(MSR_MPERF) > 0 && rdmsr(MSR_APERF) > 0)
   tsc_perf_stat = 1;
 }

 if (vm_guest == VM_GUEST_VMWARE) {
  tsc_freq_vmware();
  return;
 }

 switch (cpu_vendor_id) {
 case 130:
  if ((amd_pminfo & AMDPM_TSC_INVARIANT) != 0 ||
      (vm_guest == VM_GUEST_NO &&
      CPUID_TO_FAMILY(cpu_id) >= 0x10))
   tsc_is_invariant = 1;
  if (cpu_feature & CPUID_SSE2) {
   tsc_timecounter.tc_get_timecount =
       tsc_get_timecount_mfence;
  }
  break;
 case 128:
  if ((amd_pminfo & AMDPM_TSC_INVARIANT) != 0 ||
      (vm_guest == VM_GUEST_NO &&
      ((CPUID_TO_FAMILY(cpu_id) == 0x6 &&
      CPUID_TO_MODEL(cpu_id) >= 0xe) ||
      (CPUID_TO_FAMILY(cpu_id) == 0xf &&
      CPUID_TO_MODEL(cpu_id) >= 0x3))))
   tsc_is_invariant = 1;
  if (cpu_feature & CPUID_SSE2) {
   tsc_timecounter.tc_get_timecount =
       tsc_get_timecount_lfence;
  }
  break;
 case 129:
  if (vm_guest == VM_GUEST_NO &&
      CPUID_TO_FAMILY(cpu_id) == 0x6 &&
      CPUID_TO_MODEL(cpu_id) >= 0xf &&
      (rdmsr(0x1203) & 0x100000000ULL) == 0)
   tsc_is_invariant = 1;
  if (cpu_feature & CPUID_SSE2) {
   tsc_timecounter.tc_get_timecount =
       tsc_get_timecount_lfence;
  }
  break;
 }

 if (!TUNABLE_INT_FETCH("machdep.disable_tsc_calibration",
     &tsc_skip_calibration)) {
  if (acpi_get_fadt_bootflags(&bootflags) &&
      (bootflags & ACPI_FADT_LEGACY_DEVICES) == 0 &&
      tsc_freq_cpuid()) {
   printf("Skipping TSC calibration since no legacy "
       "devices reported by FADT and CPUID works\n");
   tsc_skip_calibration = 1;
  }
 }
 if (tsc_skip_calibration) {
  if (tsc_freq_cpuid())
   ;
  else if (cpu_vendor_id == 128)
   tsc_freq_intel();
 } else {
  if (bootverbose)
   printf("Calibrating TSC clock ... ");
  tsc1 = rdtsc();
  DELAY(1000000);
  tsc2 = rdtsc();
  tsc_freq = tsc2 - tsc1;
 }
 if (bootverbose)
  printf("TSC clock: %ju Hz\n", (intmax_t)tsc_freq);
}
