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
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int CPU_SETSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int VM_MAXCPU ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char const*,char*,int*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ ** vcpumap ; 

__attribute__((used)) static int
FUNC6(const char *opt)
{
	int vcpu, pcpu;

	if (FUNC5(opt, "%d:%d", &vcpu, &pcpu) != 2) {
		FUNC2(stderr, "invalid format: %s\n", opt);
		return (-1);
	}

	if (vcpu < 0 || vcpu >= VM_MAXCPU) {
		FUNC2(stderr, "vcpu '%d' outside valid range from 0 to %d\n",
		    vcpu, VM_MAXCPU - 1);
		return (-1);
	}

	if (pcpu < 0 || pcpu >= CPU_SETSIZE) {
		FUNC2(stderr, "hostcpu '%d' outside valid range from "
		    "0 to %d\n", pcpu, CPU_SETSIZE - 1);
		return (-1);
	}

	if (vcpumap[vcpu] == NULL) {
		if ((vcpumap[vcpu] = FUNC3(sizeof(cpuset_t))) == NULL) {
			FUNC4("malloc");
			return (-1);
		}
		FUNC1(vcpumap[vcpu]);
	}
	FUNC0(pcpu, vcpumap[vcpu]);
	return (0);
}