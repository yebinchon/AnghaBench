
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VM_CAP_MTRAP_EXIT ;
 int _gdb_cpu_suspend (int,int) ;
 int assert (int) ;
 int ctx ;
 int debug (char*,int) ;
 int gdb_lock ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stepping_vcpu ;
 int stopped_vcpu ;
 int vm_set_capability (int ,int,int ,int ) ;
 int vm_suspend_cpu (int ,int) ;

void
gdb_cpu_mtrap(int vcpu)
{

 debug("$vCPU %d MTRAP\n", vcpu);
 pthread_mutex_lock(&gdb_lock);
 if (vcpu == stepping_vcpu) {
  stepping_vcpu = -1;
  vm_set_capability(ctx, vcpu, VM_CAP_MTRAP_EXIT, 0);
  vm_suspend_cpu(ctx, vcpu);
  assert(stopped_vcpu == -1);
  stopped_vcpu = vcpu;
  _gdb_cpu_suspend(vcpu, 1);
 }
 pthread_mutex_unlock(&gdb_lock);
}
