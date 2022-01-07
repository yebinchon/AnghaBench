
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint64_t ;
typedef size_t u_int ;
struct pcpu {TYPE_1__* pc_idlethread; int pc_curpcb; TYPE_1__* pc_curthread; } ;
struct TYPE_4__ {int p_vmspace; } ;
struct TYPE_3__ {int td_pcb; } ;


 int KASSERT (int ,char*) ;
 int * PCPU_GET (int ) ;
 int SIE_SEIE ;
 int SIE_SSIE ;
 struct pcpu* __pcpu ;
 int ap_boot_mtx ;
 int aps_ready ;
 int atomic_add_rel_32 (scalar_t__*,int) ;
 int atomic_store_rel_int (int *,int) ;
 size_t boot_hart ;
 int cpu_initclocks_ap () ;
 int csr_set (int ,int ) ;
 int identify_cpu () ;
 int idlethread ;
 scalar_t__ mp_maxid ;
 scalar_t__ mp_ncpus ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int panic (char*) ;
 int pmap_activate_boot (int ) ;
 TYPE_2__ proc0 ;
 int riscv_unmask_ipi () ;
 int sched_throw (int *) ;
 int sie ;
 int sip ;
 scalar_t__ smp_cpus ;
 int smp_started ;
 int vmspace_pmap (int ) ;

void
init_secondary(uint64_t hart)
{
 struct pcpu *pcpup;
 u_int cpuid;


 cpuid = hart;
 if (cpuid < boot_hart)
  cpuid += mp_maxid + 1;
 cpuid -= boot_hart;


 pcpup = &__pcpu[cpuid];
 __asm __volatile("mv tp, %0" :: "r"(pcpup));


 csr_set(sie, SIE_SSIE);
 csr_set(sip, SIE_SSIE);


 while (!aps_ready)
  __asm __volatile("wfi");


 KASSERT(PCPU_GET(idlethread) != ((void*)0), ("no idle thread"));
 pcpup->pc_curthread = pcpup->pc_idlethread;
 pcpup->pc_curpcb = pcpup->pc_idlethread->td_pcb;






 identify_cpu();


 riscv_unmask_ipi();



 cpu_initclocks_ap();



 csr_set(sie, SIE_SEIE);


 pmap_activate_boot(vmspace_pmap(proc0.p_vmspace));

 mtx_lock_spin(&ap_boot_mtx);

 atomic_add_rel_32(&smp_cpus, 1);

 if (smp_cpus == mp_ncpus) {

  atomic_store_rel_int(&smp_started, 1);
 }

 mtx_unlock_spin(&ap_boot_mtx);


 sched_throw(((void*)0));

 panic("scheduler returned us to init_secondary");

}
