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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  gdb_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vcpus_active ; 
 int /*<<< orphan*/  vcpus_suspended ; 

void
FUNC6(int vcpu)
{

	FUNC3("$vCPU %d starting\n", vcpu);
	FUNC4(&gdb_lock);
	FUNC1(vcpu, &vcpus_active);

	/*
	 * If a vcpu is added while vcpus are stopped, suspend the new
	 * vcpu so that it will pop back out with a debug exit before
	 * executing the first instruction.
	 */
	if (!FUNC0(&vcpus_suspended)) {
		FUNC1(vcpu, &vcpus_suspended);
		FUNC2(vcpu, false);
	}
	FUNC5(&gdb_lock);
}