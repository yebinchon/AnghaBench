
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu {size_t pc_cpuid; int pc_bsp; int pc_domain; int pc_hwref; } ;
struct cpuref {int cr_cpuid; int cr_domain; int cr_hwref; } ;


 scalar_t__ CPU_ISSET (int,int *) ;
 int CPU_SET (size_t,int *) ;
 int DOMAINSET_PREF (int) ;
 int DPCPU_SIZE ;
 int KASSERT (int,char*) ;
 int MAXCPU ;
 size_t MAXMEMDOM ;
 int M_WAITOK ;
 int M_ZERO ;
 struct pcpu* __pcpu ;
 int all_cpus ;
 int * cpuset_domain ;
 int dpcpu_init (void*,size_t) ;
 scalar_t__ kmem_malloc_domainset (int ,int ,int) ;
 int pcpu_init (struct pcpu*,size_t,int) ;
 struct pcpu* pcpup ;
 int platform_smp_first_cpu (struct cpuref*) ;
 int platform_smp_get_bsp (struct cpuref*) ;
 int platform_smp_next_cpu (struct cpuref*) ;
 int platform_smp_probe_threads () ;
 int printf (char*,int) ;
 int vm_ndomains ;

void
cpu_mp_start(void)
{
 struct cpuref bsp, cpu;
 struct pcpu *pc;
 int domain, error;

 error = platform_smp_get_bsp(&bsp);
 KASSERT(error == 0, ("Don't know BSP"));

 error = platform_smp_first_cpu(&cpu);
 while (!error) {
  if (cpu.cr_cpuid >= MAXCPU) {
   printf("SMP: cpu%d: skipped -- ID out of range\n",
       cpu.cr_cpuid);
   goto next;
  }
  if (CPU_ISSET(cpu.cr_cpuid, &all_cpus)) {
   printf("SMP: cpu%d: skipped - duplicate ID\n",
       cpu.cr_cpuid);
   goto next;
  }

  if (vm_ndomains > 1)
   domain = cpu.cr_domain;
  else
   domain = 0;

  if (cpu.cr_cpuid != bsp.cr_cpuid) {
   void *dpcpu;

   pc = &__pcpu[cpu.cr_cpuid];
   dpcpu = (void *)kmem_malloc_domainset(DOMAINSET_PREF(domain),
       DPCPU_SIZE, M_WAITOK | M_ZERO);
   pcpu_init(pc, cpu.cr_cpuid, sizeof(*pc));
   dpcpu_init(dpcpu, cpu.cr_cpuid);
  } else {
   pc = pcpup;
   pc->pc_cpuid = bsp.cr_cpuid;
   pc->pc_bsp = 1;
  }
  pc->pc_domain = domain;
  pc->pc_hwref = cpu.cr_hwref;

  CPU_SET(pc->pc_cpuid, &cpuset_domain[pc->pc_domain]);
  KASSERT(pc->pc_domain < MAXMEMDOM, ("bad domain value %d\n",
      pc->pc_domain));
  CPU_SET(pc->pc_cpuid, &all_cpus);
next:
  error = platform_smp_next_cpu(&cpu);
 }




}
