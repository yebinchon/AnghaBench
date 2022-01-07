
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmctx {int dummy; } ;


 int VM_CAP_UNRESTRICTED_GUEST ;
 int assert (int) ;
 int fbsdrun_addcpu (struct vmctx*,int,int,int ) ;
 int fbsdrun_set_capabilities (struct vmctx*,int) ;
 int guest_ncpus ;
 int spinup_ap_realmode (struct vmctx*,int,int *) ;
 int vcpu_reset (struct vmctx*,int) ;
 int vm_set_capability (struct vmctx*,int,int ,int) ;

int
spinup_ap(struct vmctx *ctx, int vcpu, int newcpu, uint64_t rip)
{
 int error;

 assert(newcpu != 0);
 assert(newcpu < guest_ncpus);

 error = vcpu_reset(ctx, newcpu);
 assert(error == 0);

 fbsdrun_set_capabilities(ctx, newcpu);







 error = vm_set_capability(ctx, newcpu, VM_CAP_UNRESTRICTED_GUEST, 1);
 assert(error == 0);

 spinup_ap_realmode(ctx, newcpu, &rip);

 fbsdrun_addcpu(ctx, vcpu, newcpu, rip);

 return (newcpu);
}
