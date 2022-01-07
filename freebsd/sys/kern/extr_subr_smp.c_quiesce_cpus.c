
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct pcpu {TYPE_1__* pc_idlethread; } ;
typedef int cpuset_t ;
struct TYPE_2__ {scalar_t__ td_generation; } ;


 scalar_t__ CPU_ABSENT (int) ;
 int CPU_ISSET (int,int *) ;
 int EWOULDBLOCK ;
 int MAXCPU ;
 int curthread ;
 int mp_maxid ;
 struct pcpu* pcpu_find (int) ;
 int sched_bind (int ,int) ;
 int sched_unbind (int ) ;
 int thread_lock (int ) ;
 int thread_unlock (int ) ;
 int tsleep (int (*) (int ,char const*,int),int,char const*,int) ;

int
quiesce_cpus(cpuset_t map, const char *wmesg, int prio)
{
 struct pcpu *pcpu;
 u_int gen[MAXCPU];
 int error;
 int cpu;

 error = 0;
 for (cpu = 0; cpu <= mp_maxid; cpu++) {
  if (!CPU_ISSET(cpu, &map) || CPU_ABSENT(cpu))
   continue;
  pcpu = pcpu_find(cpu);
  gen[cpu] = pcpu->pc_idlethread->td_generation;
 }
 for (cpu = 0; cpu <= mp_maxid; cpu++) {
  if (!CPU_ISSET(cpu, &map) || CPU_ABSENT(cpu))
   continue;
  pcpu = pcpu_find(cpu);
  thread_lock(curthread);
  sched_bind(curthread, cpu);
  thread_unlock(curthread);
  while (gen[cpu] == pcpu->pc_idlethread->td_generation) {
   error = tsleep(quiesce_cpus, prio, wmesg, 1);
   if (error != EWOULDBLOCK)
    goto out;
   error = 0;
  }
 }
out:
 thread_lock(curthread);
 sched_unbind(curthread);
 thread_unlock(curthread);

 return (error);
}
