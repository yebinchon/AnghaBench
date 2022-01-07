
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUID_STEPPING ;
 int CPUID_TSC ;



 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_PRI_FIRST ;
 void* EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int cpu_feature ;
 int cpu_id ;
 int cpu_vendor_id ;
 int cpufreq_levels_changed ;
 int cpufreq_post_change ;
 int cpufreq_pre_change ;
 int probe_tsc_freq () ;
 int rdtsc ;
 int set_cputicker (int ,scalar_t__,int) ;
 scalar_t__ tsc_disabled ;
 scalar_t__ tsc_freq ;
 int tsc_freq_changed ;
 int tsc_freq_changing ;
 scalar_t__ tsc_is_invariant ;
 int tsc_levels_changed ;
 void* tsc_levels_tag ;
 void* tsc_post_tag ;
 void* tsc_pre_tag ;

void
init_TSC(void)
{

 if ((cpu_feature & CPUID_TSC) == 0 || tsc_disabled)
  return;
 probe_tsc_freq();






 if (tsc_freq != 0)
  set_cputicker(rdtsc, tsc_freq, !tsc_is_invariant);

 if (tsc_is_invariant)
  return;


 tsc_pre_tag = EVENTHANDLER_REGISTER(cpufreq_pre_change,
     tsc_freq_changing, ((void*)0), EVENTHANDLER_PRI_FIRST);
 tsc_post_tag = EVENTHANDLER_REGISTER(cpufreq_post_change,
     tsc_freq_changed, ((void*)0), EVENTHANDLER_PRI_FIRST);
 tsc_levels_tag = EVENTHANDLER_REGISTER(cpufreq_levels_changed,
     tsc_levels_changed, ((void*)0), EVENTHANDLER_PRI_ANY);
}
