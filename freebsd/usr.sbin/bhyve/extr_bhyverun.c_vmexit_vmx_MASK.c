#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vmctx {int dummy; } ;
struct TYPE_3__ {int status; int exit_reason; int inst_type; int inst_error; int /*<<< orphan*/  exit_qualification; } ;
struct TYPE_4__ {TYPE_1__ vmx; } ;
struct vm_exit {int inst_length; TYPE_2__ u; int /*<<< orphan*/  rip; } ;

/* Variables and functions */
 int EXIT_REASON_EPT_MISCONFIG ; 
 int /*<<< orphan*/  VMCS_GUEST_PHYSICAL_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int VMEXIT_ABORT ; 
 int /*<<< orphan*/  ept_misconfig_gpa ; 
 int /*<<< orphan*/ * ept_misconfig_pte ; 
 int ept_misconfig_ptenum ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (struct vmctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct vmctx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct vmctx *ctx, struct vm_exit *vmexit, int *pvcpu)
{

	FUNC1(stderr, "vm exit[%d]\n", *pvcpu);
	FUNC1(stderr, "\treason\t\tVMX\n");
	FUNC1(stderr, "\trip\t\t0x%016x\n", vmexit->rip);
	FUNC1(stderr, "\tinst_length\t%d\n", vmexit->inst_length);
	FUNC1(stderr, "\tstatus\t\t%d\n", vmexit->u.vmx.status);
	FUNC1(stderr, "\texit_reason\t%u (%s)\n", vmexit->u.vmx.exit_reason,
	    FUNC4(vmexit->u.vmx.exit_reason));
	FUNC1(stderr, "\tqualification\t0x%016x\n",
	    vmexit->u.vmx.exit_qualification);
	FUNC1(stderr, "\tinst_type\t\t%d\n", vmexit->u.vmx.inst_type);
	FUNC1(stderr, "\tinst_error\t\t%d\n", vmexit->u.vmx.inst_error);
#ifdef DEBUG_EPT_MISCONFIG
	if (vmexit->u.vmx.exit_reason == EXIT_REASON_EPT_MISCONFIG) {
		vm_get_register(ctx, *pvcpu,
		    VMCS_IDENT(VMCS_GUEST_PHYSICAL_ADDRESS),
		    &ept_misconfig_gpa);
		vm_get_gpa_pmap(ctx, ept_misconfig_gpa, ept_misconfig_pte,
		    &ept_misconfig_ptenum);
		fprintf(stderr, "\tEPT misconfiguration:\n");
		fprintf(stderr, "\t\tGPA: %#lx\n", ept_misconfig_gpa);
		fprintf(stderr, "\t\tPTE(%d): %#lx %#lx %#lx %#lx\n",
		    ept_misconfig_ptenum, ept_misconfig_pte[0],
		    ept_misconfig_pte[1], ept_misconfig_pte[2],
		    ept_misconfig_pte[3]);
	}
#endif	/* DEBUG_EPT_MISCONFIG */
	return (VMEXIT_ABORT);
}