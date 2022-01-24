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
struct intr_event {int dummy; } ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int CPU_SETSIZE ; 
#define  CPU_WHICH_INTRHANDLER 130 
#define  CPU_WHICH_IRQ 129 
#define  CPU_WHICH_ITHREAD 128 
 int EINVAL ; 
 int ESRCH ; 
 int NOCPU ; 
 int /*<<< orphan*/  cpuset_root ; 
 int FUNC2 (struct intr_event*,int) ; 
 int FUNC3 (struct intr_event*,int) ; 
 int FUNC4 (struct intr_event*,int) ; 
 struct intr_event* FUNC5 (int) ; 

int
FUNC6(int irq, int mode, void *m)
{
	struct intr_event *ie;
	cpuset_t *mask;
	int cpu, n;

	mask = m;
	cpu = NOCPU;
	/*
	 * If we're setting all cpus we can unbind.  Otherwise make sure
	 * only one cpu is in the set.
	 */
	if (FUNC0(cpuset_root, mask)) {
		for (n = 0; n < CPU_SETSIZE; n++) {
			if (!FUNC1(n, mask))
				continue;
			if (cpu != NOCPU)
				return (EINVAL);
			cpu = n;
		}
	}
	ie = FUNC5(irq);
	if (ie == NULL)
		return (ESRCH);
	switch (mode) {
	case CPU_WHICH_IRQ:
		return (FUNC2(ie, cpu));
	case CPU_WHICH_INTRHANDLER:
		return (FUNC3(ie, cpu));
	case CPU_WHICH_ITHREAD:
		return (FUNC4(ie, cpu));
	default:
		return (EINVAL);
	}
}