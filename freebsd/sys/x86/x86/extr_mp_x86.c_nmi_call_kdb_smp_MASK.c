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
typedef  int /*<<< orphan*/  u_int ;
struct trapframe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,struct trapframe*) ; 
 int /*<<< orphan*/  nmi_kdb_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stoppcbs ; 
 int /*<<< orphan*/  stopped_cpus ; 

void
FUNC8(u_int type, struct trapframe *frame)
{
	int cpu;
	bool call_post;

	cpu = FUNC1(cpuid);
	if (FUNC2(&nmi_kdb_lock, 0, 1)) {
		FUNC6(cpu, type, frame);
		call_post = false;
	} else {
		FUNC7(&stoppcbs[cpu]);
		FUNC0(cpu, &stopped_cpus);
		while (!FUNC2(&nmi_kdb_lock, 0, 1))
			FUNC5();
		call_post = true;
	}
	FUNC3(&nmi_kdb_lock, 0);
	if (call_post)
		FUNC4(cpu);
}