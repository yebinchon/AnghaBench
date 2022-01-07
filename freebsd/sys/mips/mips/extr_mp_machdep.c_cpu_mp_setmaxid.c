
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuset_t ;


 int CPU_CLR (int,int *) ;
 int CPU_FFS (int *) ;
 int MAXCPU ;
 scalar_t__ min (int,int ) ;
 scalar_t__ mp_maxid ;
 int mp_ncpus ;
 int platform_cpu_mask (int *) ;

void
cpu_mp_setmaxid(void)
{
 cpuset_t cpumask;
 int cpu, last;

 platform_cpu_mask(&cpumask);
 mp_ncpus = 0;
 last = 1;
 while ((cpu = CPU_FFS(&cpumask)) != 0) {
  last = cpu;
  cpu--;
  CPU_CLR(cpu, &cpumask);
  mp_ncpus++;
 }
 if (mp_ncpus <= 0)
  mp_ncpus = 1;

 mp_maxid = min(last, MAXCPU) - 1;
}
