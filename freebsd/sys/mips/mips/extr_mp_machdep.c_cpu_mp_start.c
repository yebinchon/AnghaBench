
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuset_t ;


 int CPU_CLR (int,int *) ;
 int CPU_EMPTY (int *) ;
 int CPU_FFS (int *) ;
 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int MAXCPU ;
 int MTX_SPIN ;
 int all_cpus ;
 int ap_boot_mtx ;
 scalar_t__ bootverbose ;
 int mtx_init (int *,char*,int *,int ) ;
 int platform_cpu_mask (int *) ;
 int platform_processor_id () ;
 int printf (char*,int,...) ;
 int start_ap (int) ;

void
cpu_mp_start(void)
{
 int error, cpuid;
 cpuset_t cpumask;

 mtx_init(&ap_boot_mtx, "ap boot", ((void*)0), MTX_SPIN);

 CPU_ZERO(&all_cpus);
 platform_cpu_mask(&cpumask);

 while (!CPU_EMPTY(&cpumask)) {
  cpuid = CPU_FFS(&cpumask) - 1;
  CPU_CLR(cpuid, &cpumask);

  if (cpuid >= MAXCPU) {
   printf("cpu_mp_start: ignoring AP #%d.\n", cpuid);
   continue;
  }

  if (cpuid != platform_processor_id()) {
   if ((error = start_ap(cpuid)) != 0) {
    printf("AP #%d failed to start: %d\n", cpuid, error);
    continue;
   }
   if (bootverbose)
    printf("AP #%d started!\n", cpuid);
  }
  CPU_SET(cpuid, &all_cpus);
 }
}
