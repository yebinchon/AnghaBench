
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUID_TSC ;
 scalar_t__ atomic_load_acq_64 (int *) ;
 int callout_init (int *,int ) ;
 int cpu_feature ;
 int machclk_usepcc ;
 int tbr_callout ;
 int tsc_freq ;

__attribute__((used)) static void
init_machclk_setup(void)
{




 machclk_usepcc = 1;
 if ((cpu_feature & CPUID_TSC) == 0 ||
     atomic_load_acq_64(&tsc_freq) == 0)
  machclk_usepcc = 0;

}
