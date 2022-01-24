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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  gdb_lock ; 
 int /*<<< orphan*/  idle_vcpus ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int stepping_vcpu ; 
 int /*<<< orphan*/  vcpus_suspended ; 
 int /*<<< orphan*/  vcpus_waiting ; 

__attribute__((used)) static void
FUNC7(int vcpu, bool report_stop)
{

	FUNC4("$vCPU %d suspending\n", vcpu);
	FUNC3(vcpu, &vcpus_waiting);
	if (report_stop && FUNC1(&vcpus_waiting, &vcpus_suspended) == 0)
		FUNC5();
	while (FUNC2(vcpu, &vcpus_suspended) && vcpu != stepping_vcpu)
		FUNC6(&idle_vcpus, &gdb_lock);
	FUNC0(vcpu, &vcpus_waiting);
	FUNC4("$vCPU %d resuming\n", vcpu);
}