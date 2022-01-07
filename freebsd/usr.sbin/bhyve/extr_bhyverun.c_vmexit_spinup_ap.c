
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmctx {int dummy; } ;
struct TYPE_3__ {int rip; int vcpu; } ;
struct TYPE_4__ {TYPE_1__ spinup_ap; } ;
struct vm_exit {TYPE_2__ u; } ;


 int VMEXIT_CONTINUE ;
 int spinup_ap (struct vmctx*,int,int ,int ) ;

__attribute__((used)) static int
vmexit_spinup_ap(struct vmctx *ctx, struct vm_exit *vme, int *pvcpu)
{

 (void)spinup_ap(ctx, *pvcpu,
      vme->u.spinup_ap.vcpu, vme->u.spinup_ap.rip);

 return (VMEXIT_CONTINUE);
}
