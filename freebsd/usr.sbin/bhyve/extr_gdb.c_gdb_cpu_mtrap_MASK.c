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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  gdb_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int stepping_vcpu ; 
 int stopped_vcpu ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

void
FUNC7(int vcpu)
{

	FUNC2("$vCPU %d MTRAP\n", vcpu);
	FUNC3(&gdb_lock);
	if (vcpu == stepping_vcpu) {
		stepping_vcpu = -1;
		FUNC5(ctx, vcpu, VM_CAP_MTRAP_EXIT, 0);
		FUNC6(ctx, vcpu);
		FUNC1(stopped_vcpu == -1);
		stopped_vcpu = vcpu;
		FUNC0(vcpu, true);
	}
	FUNC4(&gdb_lock);
}