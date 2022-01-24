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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  enum vm_reg_name { ____Placeholder_vm_reg_name } vm_reg_name ;

/* Variables and functions */
 int /*<<< orphan*/  BSP ; 
 int /*<<< orphan*/  USERBOOT_EXIT_QUIT ; 
 int VM_REG_GUEST_CR0 ; 
 int VM_REG_GUEST_CR3 ; 
 int VM_REG_GUEST_CR4 ; 
 int VM_REG_LAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cr3 ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *arg, int r, uint64_t v)
{
	int error;
	enum vm_reg_name vmreg;
	
	vmreg = VM_REG_LAST;

	switch (r) {
	case 0:
		vmreg = VM_REG_GUEST_CR0;
		break;
	case 3:
		vmreg = VM_REG_GUEST_CR3;
		cr3 = v;
		break;
	case 4:
		vmreg = VM_REG_GUEST_CR4;
		break;
	default:
		break;
	}

	if (vmreg == VM_REG_LAST) {
		FUNC2("test_setcr(%d): not implemented\n", r);
		FUNC0(NULL, USERBOOT_EXIT_QUIT);
	}

	error = FUNC3(ctx, BSP, vmreg, v);
	if (error) {
		FUNC1("vm_set_cr");
		FUNC0(NULL, USERBOOT_EXIT_QUIT);
	}
}