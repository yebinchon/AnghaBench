
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct monitorbuf {int stop_state; } ;


 int CPUID2_MON ;
 int CPU_ISSET (size_t,int *) ;
 int CPU_SET_ATOMIC (size_t,int *) ;
 int IS_BSP () ;
 scalar_t__ MONITOR_STOPSTATE_STOPPED ;
 int MWAIT_C1 ;
 size_t PCPU_GET (int ) ;
 struct monitorbuf* PCPU_PTR (int ) ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ atomic_load_int (int *) ;
 int atomic_store_int (int *,scalar_t__) ;
 int cpu_feature2 ;
 int cpu_monitor (struct monitorbuf*,int ,int ) ;
 int cpu_mwait (int ,int ) ;
 int cpuid ;
 int cpustop_handler_post (size_t) ;
 int halt () ;
 int ia32_pause () ;
 int monitorbuf ;
 int mwait_cpustop_broken ;
 int * panicstr ;
 int savectx (int *) ;
 int started_cpus ;
 scalar_t__ stop_mwait ;
 int * stoppcbs ;
 int stopped_cpus ;

void
cpustop_handler(void)
{
 struct monitorbuf *mb;
 u_int cpu;
 bool use_mwait;

 cpu = PCPU_GET(cpuid);

 savectx(&stoppcbs[cpu]);

 use_mwait = (stop_mwait && (cpu_feature2 & CPUID2_MON) != 0 &&
     !mwait_cpustop_broken);
 if (use_mwait) {
  mb = PCPU_PTR(monitorbuf);
  atomic_store_int(&mb->stop_state,
      MONITOR_STOPSTATE_STOPPED);
 }


 CPU_SET_ATOMIC(cpu, &stopped_cpus);


 while (!CPU_ISSET(cpu, &started_cpus)) {
  if (use_mwait) {
   cpu_monitor(mb, 0, 0);
   if (atomic_load_int(&mb->stop_state) ==
       MONITOR_STOPSTATE_STOPPED)
    cpu_mwait(0, MWAIT_C1);
   continue;
  }

  ia32_pause();






  while (__predict_false(!IS_BSP() && panicstr != ((void*)0)))
   halt();
 }

 cpustop_handler_post(cpu);
}
