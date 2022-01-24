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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct vmctx {int dummy; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  VM_REG_GUEST_CS ; 
 int /*<<< orphan*/  VM_REG_GUEST_RIP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct vmctx*,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct vmctx*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vmctx*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct vmctx *ctx, int newcpu, uint64_t *rip)
{
	int vector, error;
	uint16_t cs;
	uint64_t desc_base;
	uint32_t desc_limit, desc_access;

	vector = *rip >> PAGE_SHIFT;
	*rip = 0;

	/*
	 * Update the %cs and %rip of the guest so that it starts
	 * executing real mode code at at 'vector << 12'.
	 */
	error = FUNC3(ctx, newcpu, VM_REG_GUEST_RIP, *rip);
	FUNC0(error == 0);

	error = FUNC1(ctx, newcpu, VM_REG_GUEST_CS, &desc_base,
			    &desc_limit, &desc_access);
	FUNC0(error == 0);

	desc_base = vector << PAGE_SHIFT;
	error = FUNC2(ctx, newcpu, VM_REG_GUEST_CS,
			    desc_base, desc_limit, desc_access);
	FUNC0(error == 0);

	cs = (vector << PAGE_SHIFT) >> 4;
	error = FUNC3(ctx, newcpu, VM_REG_GUEST_CS, cs);
	FUNC0(error == 0);
}