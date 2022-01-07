
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_EVNTSEL0 ;
 int MSR_EVNTSEL1 ;
 int MSR_P5_CESR ;
 int MSR_P5_CTR0 ;
 int MSR_P5_CTR1 ;
 int MSR_PERFCTR0 ;
 int MSR_PERFCTR1 ;
 int cpu_class ;
 int * msr_ctl ;
 int * msr_pmc ;
 int perfmon_cpuok ;
 int writectl ;
 int writectl5 ;
 int writectl6 ;

void
perfmon_init(void)
{

 switch(cpu_class) {
 case 129:
  perfmon_cpuok = 1;
  msr_ctl[0] = MSR_P5_CESR;
  msr_ctl[1] = MSR_P5_CESR;
  msr_pmc[0] = MSR_P5_CTR0;
  msr_pmc[1] = MSR_P5_CTR1;
  writectl = writectl5;
  break;
 case 128:
  perfmon_cpuok = 1;
  msr_ctl[0] = MSR_EVNTSEL0;
  msr_ctl[1] = MSR_EVNTSEL1;
  msr_pmc[0] = MSR_PERFCTR0;
  msr_pmc[1] = MSR_PERFCTR1;
  writectl = writectl6;
  break;

 default:
  perfmon_cpuok = 0;
  break;
 }

}
