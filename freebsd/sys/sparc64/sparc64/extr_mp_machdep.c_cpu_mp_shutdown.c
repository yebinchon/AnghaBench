
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuset_t ;


 int CPU_CLR (int ,int *) ;
 scalar_t__ CPU_CMP (int *,int *) ;
 int CPU_EMPTY (int *) ;
 int CPU_NAND (int *,int *) ;
 int PCPU_GET (int ) ;
 int all_cpus ;
 int cpuid ;
 int critical_enter () ;
 int critical_exit () ;
 int printf (char*) ;
 int shutdown_cpus ;
 int stop_cpus (int ) ;
 int stopped_cpus ;

void
cpu_mp_shutdown(void)
{
 cpuset_t cpus;
 int i;

 critical_enter();
 shutdown_cpus = all_cpus;
 CPU_CLR(PCPU_GET(cpuid), &shutdown_cpus);
 cpus = shutdown_cpus;


 if (CPU_CMP(&stopped_cpus, &cpus)) {


  CPU_NAND(&cpus, &stopped_cpus);
  stop_cpus(cpus);
 }
 i = 0;
 while (!CPU_EMPTY(&shutdown_cpus)) {
  if (i++ > 100000) {
   printf("timeout shutting down CPUs.\n");
   break;
  }
 }
 critical_exit();
}
