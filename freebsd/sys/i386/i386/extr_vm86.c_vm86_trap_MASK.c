#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u_char ;
struct vm86frame {int vmf_eflags; int vmf_trapno; int /*<<< orphan*/  vmf_ip; int /*<<< orphan*/  vmf_cs; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 scalar_t__ HLT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PSL_C ; 
 int PSL_VM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ setidt_disp ; 
 scalar_t__ vm86_biosret ; 

void
FUNC2(struct vm86frame *vmf)
{
	void (*p)(struct vm86frame *);
	caddr_t addr;

	/* "should not happen" */
	if ((vmf->vmf_eflags & PSL_VM) == 0)
		FUNC1("vm86_trap called, but not in vm86 mode");

	addr = FUNC0(vmf->vmf_cs, vmf->vmf_ip);
	if (*(u_char *)addr == HLT)
		vmf->vmf_trapno = vmf->vmf_eflags & PSL_C;
	else
		vmf->vmf_trapno = vmf->vmf_trapno << 16;

	p = (void (*)(struct vm86frame *))((uintptr_t)vm86_biosret +
	    setidt_disp);
	p(vmf);
}