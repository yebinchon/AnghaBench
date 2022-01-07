
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int register_t ;


 int CPUID_TSC ;
 int DELAY (int) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int MSR_APERF ;
 int MSR_MPERF ;
 int cpu_feature ;
 int curthread ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int * pcpu_find (int) ;
 int rdmsr (int ) ;
 int rdtsc () ;
 int sched_bind (int ,int) ;
 int sched_unbind (int ) ;
 int smp_cpus ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;
 scalar_t__ tsc_is_invariant ;
 int tsc_perf_stat ;
 int wrmsr (int ,int ) ;

int
cpu_est_clockrate(int cpu_id, uint64_t *rate)
{
 uint64_t tsc1, tsc2;
 uint64_t acnt, mcnt, perf;
 register_t reg;

 if (pcpu_find(cpu_id) == ((void*)0) || rate == ((void*)0))
  return (EINVAL);
 if (tsc_is_invariant && !tsc_perf_stat)
  return (EOPNOTSUPP);
 reg = intr_disable();
 if (tsc_is_invariant) {
  wrmsr(MSR_MPERF, 0);
  wrmsr(MSR_APERF, 0);
  tsc1 = rdtsc();
  DELAY(1000);
  mcnt = rdmsr(MSR_MPERF);
  acnt = rdmsr(MSR_APERF);
  tsc2 = rdtsc();
  intr_restore(reg);
  perf = 1000 * acnt / mcnt;
  *rate = (tsc2 - tsc1) * perf;
 } else {
  tsc1 = rdtsc();
  DELAY(1000);
  tsc2 = rdtsc();
  intr_restore(reg);
  *rate = (tsc2 - tsc1) * 1000;
 }
 return (0);
}
