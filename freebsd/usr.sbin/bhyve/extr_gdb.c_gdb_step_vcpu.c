
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VM_CAP_MTRAP_EXIT ;
 int ctx ;
 int debug (char*,int) ;
 int idle_vcpus ;
 int pthread_cond_broadcast (int *) ;
 int stepping_vcpu ;
 int vm_get_capability (int ,int,int ,int*) ;
 int vm_resume_cpu (int ,int) ;
 int vm_set_capability (int ,int,int ,int) ;

__attribute__((used)) static bool
gdb_step_vcpu(int vcpu)
{
 int error, val;

 debug("$vCPU %d step\n", vcpu);
 error = vm_get_capability(ctx, vcpu, VM_CAP_MTRAP_EXIT, &val);
 if (error < 0)
  return (0);
 error = vm_set_capability(ctx, vcpu, VM_CAP_MTRAP_EXIT, 1);
 vm_resume_cpu(ctx, vcpu);
 stepping_vcpu = vcpu;
 pthread_cond_broadcast(&idle_vcpus);
 return (1);
}
