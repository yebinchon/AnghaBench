
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int tc_quality; char* tc_name; int tc_frequency; void* tc_priv; int tc_get_timecount; int tc_flags; } ;


 int AMDPM_TSC_INVARIANT ;
 int CPUID_SSE2 ;
 int CPUID_TSC ;
 scalar_t__ CPU_VENDOR_AMD ;
 scalar_t__ CPU_VENDOR_INTEL ;
 scalar_t__ POWER_PM_TYPE_APM ;
 int TC_FLAGS_C2STOP ;
 int UINT_MAX ;
 int amd_pminfo ;
 scalar_t__ bootverbose ;
 int cpu_feature ;
 scalar_t__ cpu_vendor_id ;
 int mp_ncpus ;
 scalar_t__ power_pm_get_type () ;
 int printf (char*,...) ;
 int smp_tsc_adjust ;
 int tc_init (TYPE_1__*) ;
 int test_tsc (int ) ;
 scalar_t__ tsc_disabled ;
 int tsc_freq ;
 int tsc_get_timecount ;
 int tsc_get_timecount_lfence ;
 int tsc_get_timecount_low ;
 int tsc_get_timecount_low_lfence ;
 int tsc_get_timecount_low_mfence ;
 int tsc_get_timecount_mfence ;
 scalar_t__ tsc_is_invariant ;
 int tsc_shift ;
 TYPE_1__ tsc_timecounter ;

__attribute__((used)) static void
init_TSC_tc(void)
{
 uint64_t max_freq;
 int shift;

 if ((cpu_feature & CPUID_TSC) == 0 || tsc_disabled)
  return;





 max_freq = UINT_MAX;
 if (power_pm_get_type() == POWER_PM_TYPE_APM) {
  tsc_timecounter.tc_quality = -1000;
  if (bootverbose)
   printf("TSC timecounter disabled: APM enabled.\n");
  goto init;
 }
 if (cpu_vendor_id == CPU_VENDOR_INTEL &&
     (amd_pminfo & AMDPM_TSC_INVARIANT) == 0) {
  tsc_timecounter.tc_flags |= TC_FLAGS_C2STOP;
  if (bootverbose)
   printf("TSC timecounter disables C2 and C3.\n");
 }
 if (tsc_is_invariant)
  tsc_timecounter.tc_quality = 1000;
 max_freq >>= tsc_shift;

init:
 for (shift = 0; shift <= 31 && (tsc_freq >> shift) > max_freq; shift++)
  ;
 if ((cpu_feature & CPUID_SSE2) != 0 && mp_ncpus > 1) {
  if (cpu_vendor_id == CPU_VENDOR_AMD) {
   tsc_timecounter.tc_get_timecount = shift > 0 ?
       tsc_get_timecount_low_mfence :
       tsc_get_timecount_mfence;
  } else {
   tsc_timecounter.tc_get_timecount = shift > 0 ?
       tsc_get_timecount_low_lfence :
       tsc_get_timecount_lfence;
  }
 } else {
  tsc_timecounter.tc_get_timecount = shift > 0 ?
      tsc_get_timecount_low : tsc_get_timecount;
 }
 if (shift > 0) {
  tsc_timecounter.tc_name = "TSC-low";
  if (bootverbose)
   printf("TSC timecounter discards lower %d bit(s)\n",
       shift);
 }
 if (tsc_freq != 0) {
  tsc_timecounter.tc_frequency = tsc_freq >> shift;
  tsc_timecounter.tc_priv = (void *)(intptr_t)shift;
  tc_init(&tsc_timecounter);
 }
}
