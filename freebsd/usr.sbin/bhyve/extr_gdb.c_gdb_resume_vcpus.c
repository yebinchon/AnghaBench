
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_ZERO (int *) ;
 int assert (int ) ;
 int ctx ;
 int debug (char*) ;
 int gdb_lock ;
 int idle_vcpus ;
 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_isowned_np (int *) ;
 int vcpus_suspended ;
 int vm_resume_cpu (int ,int) ;

__attribute__((used)) static void
gdb_resume_vcpus(void)
{

 assert(pthread_mutex_isowned_np(&gdb_lock));
 vm_resume_cpu(ctx, -1);
 debug("resuming all CPUs\n");
 CPU_ZERO(&vcpus_suspended);
 pthread_cond_broadcast(&idle_vcpus);
}
