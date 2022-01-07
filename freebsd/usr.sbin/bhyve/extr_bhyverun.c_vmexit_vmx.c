
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmctx {int dummy; } ;
struct TYPE_3__ {int status; int exit_reason; int inst_type; int inst_error; int exit_qualification; } ;
struct TYPE_4__ {TYPE_1__ vmx; } ;
struct vm_exit {int inst_length; TYPE_2__ u; int rip; } ;


 int EXIT_REASON_EPT_MISCONFIG ;
 int VMCS_GUEST_PHYSICAL_ADDRESS ;
 int VMCS_IDENT (int ) ;
 int VMEXIT_ABORT ;
 int ept_misconfig_gpa ;
 int * ept_misconfig_pte ;
 int ept_misconfig_ptenum ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int vm_get_gpa_pmap (struct vmctx*,int ,int *,int*) ;
 int vm_get_register (struct vmctx*,int,int ,int *) ;
 char* vmexit_vmx_desc (int) ;

__attribute__((used)) static int
vmexit_vmx(struct vmctx *ctx, struct vm_exit *vmexit, int *pvcpu)
{

 fprintf(stderr, "vm exit[%d]\n", *pvcpu);
 fprintf(stderr, "\treason\t\tVMX\n");
 fprintf(stderr, "\trip\t\t0x%016lx\n", vmexit->rip);
 fprintf(stderr, "\tinst_length\t%d\n", vmexit->inst_length);
 fprintf(stderr, "\tstatus\t\t%d\n", vmexit->u.vmx.status);
 fprintf(stderr, "\texit_reason\t%u (%s)\n", vmexit->u.vmx.exit_reason,
     vmexit_vmx_desc(vmexit->u.vmx.exit_reason));
 fprintf(stderr, "\tqualification\t0x%016lx\n",
     vmexit->u.vmx.exit_qualification);
 fprintf(stderr, "\tinst_type\t\t%d\n", vmexit->u.vmx.inst_type);
 fprintf(stderr, "\tinst_error\t\t%d\n", vmexit->u.vmx.inst_error);
 return (VMEXIT_ABORT);
}
