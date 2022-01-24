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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct vmctx {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int VM_REG_GUEST_GDTR ; 
 int VM_REG_GUEST_LDTR ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct vmctx*,int,int,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC6(struct vmctx *ctx, int vcpu, uint16_t sel)
{
	uint64_t base;
	uint32_t limit, access;
	int error, reg;

	reg = FUNC0(sel) ? VM_REG_GUEST_LDTR : VM_REG_GUEST_GDTR;
	error = FUNC5(ctx, vcpu, reg, &base, &limit, &access);
	FUNC4(error == 0);

	if (reg == VM_REG_GUEST_LDTR) {
		if (FUNC2(access) || !FUNC1(access))
			return (-1);
	}

	if (limit < FUNC3(sel))
		return (-1);
	else
		return (0);
}