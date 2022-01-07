
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuref {int cr_cpuid; } ;


 scalar_t__ max (int ,scalar_t__) ;
 scalar_t__ mp_maxid ;
 int mp_ncpus ;
 int platform_smp_first_cpu (struct cpuref*) ;
 int platform_smp_next_cpu (struct cpuref*) ;

void
cpu_mp_setmaxid(void)
{
 struct cpuref cpuref;
 int error;

 mp_ncpus = 0;
 mp_maxid = 0;
 error = platform_smp_first_cpu(&cpuref);
 while (!error) {
  mp_ncpus++;
  mp_maxid = max(cpuref.cr_cpuid, mp_maxid);
  error = platform_smp_next_cpu(&cpuref);
 }

 if (mp_ncpus == 0)
  mp_ncpus = 1;
}
