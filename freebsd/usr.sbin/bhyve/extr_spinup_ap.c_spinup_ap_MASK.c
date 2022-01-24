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
struct vmctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_CAP_UNRESTRICTED_GUEST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vmctx*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vmctx*,int) ; 
 int guest_ncpus ; 
 int /*<<< orphan*/  FUNC3 (struct vmctx*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct vmctx*,int) ; 
 int FUNC5 (struct vmctx*,int,int /*<<< orphan*/ ,int) ; 

int
FUNC6(struct vmctx *ctx, int vcpu, int newcpu, uint64_t rip)
{
	int error;

	FUNC0(newcpu != 0);
	FUNC0(newcpu < guest_ncpus);

	error = FUNC4(ctx, newcpu);
	FUNC0(error == 0);

	FUNC2(ctx, newcpu);

	/*
	 * Enable the 'unrestricted guest' mode for 'newcpu'.
	 *
	 * Set up the processor state in power-on 16-bit mode, with the CS:IP
	 * init'd to the specified low-mem 4K page.
	 */
	error = FUNC5(ctx, newcpu, VM_CAP_UNRESTRICTED_GUEST, 1);
	FUNC0(error == 0);

	FUNC3(ctx, newcpu, &rip);

	FUNC1(ctx, vcpu, newcpu, rip);

	return (newcpu);
}