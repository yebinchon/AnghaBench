
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_CLR (int,int *) ;
 scalar_t__ CPU_CMP (int *,int *) ;
 scalar_t__ CPU_ISSET (int,int *) ;
 int CPU_SET (int,int *) ;
 int debug (char*,int) ;
 int gdb_finish_suspend_vcpus () ;
 int gdb_lock ;
 int idle_vcpus ;
 int pthread_cond_wait (int *,int *) ;
 int stepping_vcpu ;
 int vcpus_suspended ;
 int vcpus_waiting ;

__attribute__((used)) static void
_gdb_cpu_suspend(int vcpu, bool report_stop)
{

 debug("$vCPU %d suspending\n", vcpu);
 CPU_SET(vcpu, &vcpus_waiting);
 if (report_stop && CPU_CMP(&vcpus_waiting, &vcpus_suspended) == 0)
  gdb_finish_suspend_vcpus();
 while (CPU_ISSET(vcpu, &vcpus_suspended) && vcpu != stepping_vcpu)
  pthread_cond_wait(&idle_vcpus, &gdb_lock);
 CPU_CLR(vcpu, &vcpus_waiting);
 debug("$vCPU %d resuming\n", vcpu);
}
