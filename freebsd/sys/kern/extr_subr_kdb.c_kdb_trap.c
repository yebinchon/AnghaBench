
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct kdb_dbbe {int (* dbbe_trap ) (int,int) ;char* dbbe_name; } ;
typedef int register_t ;
typedef int cpuset_t ;
struct TYPE_3__ {int td_stopsched; } ;


 int CPU_AND (int *,int *) ;
 int CPU_CLR (int ,int *) ;
 int CPU_NAND (int *,int *) ;
 int PCPU_GET (int ) ;
 int SCHEDULER_STOPPED () ;
 int all_cpus ;
 int cngrab () ;
 int cnungrab () ;
 int cpuid ;
 TYPE_1__* curthread ;
 int intr_disable () ;
 int intr_restore (int ) ;
 scalar_t__ kdb_active ;
 int kdb_cpu_trap (int,int) ;
 struct kdb_dbbe* kdb_dbbe ;
 struct trapframe* kdb_frame ;
 int kdb_pcb ;
 int kdb_thr_select (TYPE_1__*) ;
 int makectx (struct trapframe*,int *) ;
 int printf (char*,char*) ;
 int restart_cpus (int ) ;
 int stop_cpus_hard (int ) ;
 int stopped_cpus ;
 int stub1 (int,int) ;

int
kdb_trap(int type, int code, struct trapframe *tf)
{



 struct kdb_dbbe *be;
 register_t intr;
 int handled;
 int did_stop_cpus;

 be = kdb_dbbe;
 if (be == ((void*)0) || be->dbbe_trap == ((void*)0))
  return (0);


 if (kdb_active)
  return (0);

 intr = intr_disable();

 if (!SCHEDULER_STOPPED()) {






  curthread->td_stopsched = 1;
  did_stop_cpus = 1;
 } else
  did_stop_cpus = 0;

 kdb_active++;

 kdb_frame = tf;


 kdb_cpu_trap(type, code);

 makectx(tf, &kdb_pcb);
 kdb_thr_select(curthread);

 cngrab();

 for (;;) {
  handled = be->dbbe_trap(type, code);
  if (be == kdb_dbbe)
   break;
  be = kdb_dbbe;
  if (be == ((void*)0) || be->dbbe_trap == ((void*)0))
   break;
  printf("Switching to %s back-end\n", be->dbbe_name);
 }

 cnungrab();

 kdb_active--;

 if (did_stop_cpus) {
  curthread->td_stopsched = 0;




 }

 intr_restore(intr);

 return (handled);
}
