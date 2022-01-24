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

/* Variables and functions */
 int /*<<< orphan*/  VM_CAP_MTRAP_EXIT ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  idle_vcpus ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int stepping_vcpu ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC5(int vcpu)
{
	int error, val;

	FUNC0("$vCPU %d step\n", vcpu);
	error = FUNC2(ctx, vcpu, VM_CAP_MTRAP_EXIT, &val);
	if (error < 0)
		return (false);
	error = FUNC4(ctx, vcpu, VM_CAP_MTRAP_EXIT, 1);
	FUNC3(ctx, vcpu);
	stepping_vcpu = vcpu;
	FUNC1(&idle_vcpus);
	return (true);
}