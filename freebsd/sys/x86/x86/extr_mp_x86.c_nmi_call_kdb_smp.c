
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct trapframe {int dummy; } ;


 int CPU_SET_ATOMIC (int,int *) ;
 int PCPU_GET (int ) ;
 scalar_t__ atomic_cmpset_acq_int (int *,int ,int) ;
 int atomic_store_rel_int (int *,int ) ;
 int cpuid ;
 int cpustop_handler_post (int) ;
 int ia32_pause () ;
 int nmi_call_kdb (int,int ,struct trapframe*) ;
 int nmi_kdb_lock ;
 int savectx (int *) ;
 int * stoppcbs ;
 int stopped_cpus ;

void
nmi_call_kdb_smp(u_int type, struct trapframe *frame)
{
 int cpu;
 bool call_post;

 cpu = PCPU_GET(cpuid);
 if (atomic_cmpset_acq_int(&nmi_kdb_lock, 0, 1)) {
  nmi_call_kdb(cpu, type, frame);
  call_post = 0;
 } else {
  savectx(&stoppcbs[cpu]);
  CPU_SET_ATOMIC(cpu, &stopped_cpus);
  while (!atomic_cmpset_acq_int(&nmi_kdb_lock, 0, 1))
   ia32_pause();
  call_post = 1;
 }
 atomic_store_rel_int(&nmi_kdb_lock, 0);
 if (call_post)
  cpustop_handler_post(cpu);
}
