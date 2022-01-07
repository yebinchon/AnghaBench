
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct vmctx {int dummy; } ;
struct TYPE_5__ {int mt_vcpu; int mt_thr; struct vmctx* mt_ctx; } ;
struct TYPE_4__ {scalar_t__ inst_length; int rip; } ;


 int BSP ;
 int CPU_SET_ATOMIC (int,int *) ;
 int EX_OSERR ;
 int assert (int) ;
 int cpumask ;
 int err (int ,char*,int) ;
 int fbsdrun_start_thread ;
 TYPE_2__* mt_vmm_info ;
 int pthread_create (int *,int *,int ,TYPE_2__*) ;
 int vm_activate_cpu (struct vmctx*,int) ;
 TYPE_1__* vmexit ;

void
fbsdrun_addcpu(struct vmctx *ctx, int fromcpu, int newcpu, uint64_t rip)
{
 int error;

 assert(fromcpu == BSP);







 error = vm_activate_cpu(ctx, newcpu);
 if (error != 0)
  err(EX_OSERR, "could not activate CPU %d", newcpu);

 CPU_SET_ATOMIC(newcpu, &cpumask);





 vmexit[newcpu].rip = rip;
 vmexit[newcpu].inst_length = 0;

 mt_vmm_info[newcpu].mt_ctx = ctx;
 mt_vmm_info[newcpu].mt_vcpu = newcpu;

 error = pthread_create(&mt_vmm_info[newcpu].mt_thr, ((void*)0),
     fbsdrun_start_thread, &mt_vmm_info[newcpu]);
 assert(error == 0);
}
