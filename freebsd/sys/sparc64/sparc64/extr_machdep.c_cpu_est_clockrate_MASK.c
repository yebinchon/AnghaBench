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
struct pcpu {int /*<<< orphan*/  pc_clock; } ;

/* Variables and functions */
 int EINVAL ; 
 struct pcpu* FUNC0 (int) ; 

int
FUNC1(int cpu_id, uint64_t *rate)
{
	struct pcpu *pc;

	pc = FUNC0(cpu_id);
	if (pc == NULL || rate == NULL)
		return (EINVAL);
	*rate = pc->pc_clock;
	return (0);
}