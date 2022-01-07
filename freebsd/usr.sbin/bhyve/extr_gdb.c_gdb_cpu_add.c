
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_EMPTY (int *) ;
 int CPU_SET (int,int *) ;
 int _gdb_cpu_suspend (int,int) ;
 int debug (char*,int) ;
 int gdb_lock ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int vcpus_active ;
 int vcpus_suspended ;

void
gdb_cpu_add(int vcpu)
{

 debug("$vCPU %d starting\n", vcpu);
 pthread_mutex_lock(&gdb_lock);
 CPU_SET(vcpu, &vcpus_active);






 if (!CPU_EMPTY(&vcpus_suspended)) {
  CPU_SET(vcpu, &vcpus_suspended);
  _gdb_cpu_suspend(vcpu, 0);
 }
 pthread_mutex_unlock(&gdb_lock);
}
