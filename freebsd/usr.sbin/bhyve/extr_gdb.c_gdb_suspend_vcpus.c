
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CPU_CMP (int *,int *) ;
 int assert (int ) ;
 int ctx ;
 int debug (char*) ;
 int gdb_finish_suspend_vcpus () ;
 int gdb_lock ;
 int pthread_mutex_isowned_np (int *) ;
 int vcpus_active ;
 int vcpus_suspended ;
 int vcpus_waiting ;
 int vm_suspend_cpu (int ,int) ;

__attribute__((used)) static void
gdb_suspend_vcpus(void)
{

 assert(pthread_mutex_isowned_np(&gdb_lock));
 debug("suspending all CPUs\n");
 vcpus_suspended = vcpus_active;
 vm_suspend_cpu(ctx, -1);
 if (CPU_CMP(&vcpus_waiting, &vcpus_suspended) == 0)
  gdb_finish_suspend_vcpus();
}
