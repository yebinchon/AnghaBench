
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int sbintime_t ;


 int AMDK8_CMPHALT ;
 int CPUID2_MON ;
 int CTR2 (int ,char*,int,int ) ;
 int KTR_SPARE2 ;
 int MSR_AMDK8_IPM ;
 int PCPU_GET (int ) ;
 int ap_watchdog (int ) ;
 int cpu_activeclock () ;
 scalar_t__ cpu_disable_c3_sleep ;
 int cpu_feature2 ;
 scalar_t__ cpu_ident_amdc1e ;
 int cpu_idle_fn (int) ;
 int cpu_idle_mwait (int) ;
 int cpu_idleclock () ;
 int cpuid ;
 int critical_enter () ;
 int critical_exit () ;
 int curcpu ;
 scalar_t__ idle_mwait ;
 int rdmsr (int ) ;
 int wrmsr (int ,int) ;

void
cpu_idle(int busy)
{
 uint64_t msr;
 sbintime_t sbt = -1;

 CTR2(KTR_SPARE2, "cpu_idle(%d) at %d",
     busy, curcpu);





 if (busy) {
  if ((cpu_feature2 & CPUID2_MON) && idle_mwait) {
   cpu_idle_mwait(busy);
   goto out;
  }
 }


 if (!busy) {
  critical_enter();
  sbt = cpu_idleclock();
 }


 if (cpu_ident_amdc1e && cpu_disable_c3_sleep) {
  msr = rdmsr(MSR_AMDK8_IPM);
  if (msr & AMDK8_CMPHALT)
   wrmsr(MSR_AMDK8_IPM, msr & ~AMDK8_CMPHALT);
 }


 cpu_idle_fn(sbt);


 if (!busy) {
  cpu_activeclock();
  critical_exit();
 }
out:
 CTR2(KTR_SPARE2, "cpu_idle(%d) at %d done",
     busy, curcpu);
}
