
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmctx {int dummy; } ;
struct TYPE_3__ {int code; int wval; } ;
struct TYPE_4__ {TYPE_1__ msr; } ;
struct vm_exit {TYPE_2__ u; } ;


 int VMEXIT_CONTINUE ;
 int emulate_wrmsr (struct vmctx*,int,int,int ) ;
 int fprintf (int ,char*,int,int ,int) ;
 int stderr ;
 scalar_t__ strictmsr ;
 int vm_inject_gp (struct vmctx*,int) ;

__attribute__((used)) static int
vmexit_wrmsr(struct vmctx *ctx, struct vm_exit *vme, int *pvcpu)
{
 int error;

 error = emulate_wrmsr(ctx, *pvcpu, vme->u.msr.code, vme->u.msr.wval);
 if (error != 0) {
  fprintf(stderr, "wrmsr to register %#x(%#lx) on vcpu %d\n",
      vme->u.msr.code, vme->u.msr.wval, *pvcpu);
  if (strictmsr) {
   vm_inject_gp(ctx, *pvcpu);
   return (VMEXIT_CONTINUE);
  }
 }
 return (VMEXIT_CONTINUE);
}
