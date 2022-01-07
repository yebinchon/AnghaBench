
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct vmctx {int dummy; } ;
struct TYPE_3__ {int code; } ;
struct TYPE_4__ {TYPE_1__ msr; } ;
struct vm_exit {TYPE_2__ u; } ;


 int VMEXIT_CONTINUE ;
 int VM_REG_GUEST_RAX ;
 int VM_REG_GUEST_RDX ;
 int assert (int) ;
 int emulate_rdmsr (struct vmctx*,int,int,int*) ;
 int fprintf (int ,char*,int,int) ;
 int stderr ;
 scalar_t__ strictmsr ;
 int vm_inject_gp (struct vmctx*,int) ;
 int vm_set_register (struct vmctx*,int,int ,int) ;

__attribute__((used)) static int
vmexit_rdmsr(struct vmctx *ctx, struct vm_exit *vme, int *pvcpu)
{
 uint64_t val;
 uint32_t eax, edx;
 int error;

 val = 0;
 error = emulate_rdmsr(ctx, *pvcpu, vme->u.msr.code, &val);
 if (error != 0) {
  fprintf(stderr, "rdmsr to register %#x on vcpu %d\n",
      vme->u.msr.code, *pvcpu);
  if (strictmsr) {
   vm_inject_gp(ctx, *pvcpu);
   return (VMEXIT_CONTINUE);
  }
 }

 eax = val;
 error = vm_set_register(ctx, *pvcpu, VM_REG_GUEST_RAX, eax);
 assert(error == 0);

 edx = val >> 32;
 error = vm_set_register(ctx, *pvcpu, VM_REG_GUEST_RDX, edx);
 assert(error == 0);

 return (VMEXIT_CONTINUE);
}
