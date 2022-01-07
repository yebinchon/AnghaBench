
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_4__ {int (* cpu_resume ) () ;} ;
struct TYPE_3__ {int sp_fpususpend; int sp_pcb; } ;


 int CPU_CLR_ATOMIC (size_t,int *) ;
 int CPU_ISSET (size_t,int *) ;
 int CPU_SET_ATOMIC (size_t,int *) ;
 int MA_NOTOWNED ;
 size_t PCPU_GET (int ) ;
 int PCPU_SET (int ,int ) ;
 TYPE_2__ cpu_ops ;
 int cpuid ;
 int fpuresume (int ) ;
 int fpususpend (int ) ;
 int ia32_pause () ;
 int initializecpu () ;
 int invltlb_glob () ;
 int lapic_setup (int ) ;
 int lapic_xapic_mode () ;
 int mca_resume () ;
 int mtx_assert (int *,int ) ;
 int npxresume (int ) ;
 int npxsuspend (int ) ;
 int pmap_init_pat () ;
 int resuming_cpus ;
 scalar_t__ savectx (int *) ;
 int smp_ipi_mtx ;
 int stub1 () ;
 int suspended_cpus ;
 TYPE_1__** susppcbs ;
 int switchticks ;
 int switchtime ;
 int ticks ;
 int toresume_cpus ;
 int ucode_reload () ;
 int vmm_resume_p () ;
 int wbinvd () ;

void
cpususpend_handler(void)
{
 u_int cpu;

 mtx_assert(&smp_ipi_mtx, MA_NOTOWNED);

 cpu = PCPU_GET(cpuid);
 if (savectx(&susppcbs[cpu]->sp_pcb)) {

  fpususpend(susppcbs[cpu]->sp_fpususpend);
  CPU_SET_ATOMIC(cpu, &suspended_cpus);
  CPU_SET_ATOMIC(cpu, &resuming_cpus);







  wbinvd();
 } else {

  fpuresume(susppcbs[cpu]->sp_fpususpend);



  pmap_init_pat();
  initializecpu();
  PCPU_SET(switchtime, 0);
  PCPU_SET(switchticks, ticks);


  CPU_CLR_ATOMIC(cpu, &suspended_cpus);
 }


 while (!CPU_ISSET(cpu, &toresume_cpus))
  ia32_pause();


 ucode_reload();






 if (cpu_ops.cpu_resume)
  cpu_ops.cpu_resume();

 if (vmm_resume_p)
  vmm_resume_p();



 lapic_xapic_mode();
 mca_resume();
 lapic_setup(0);


 CPU_CLR_ATOMIC(cpu, &resuming_cpus);
 CPU_CLR_ATOMIC(cpu, &suspended_cpus);
 CPU_CLR_ATOMIC(cpu, &toresume_cpus);
}
