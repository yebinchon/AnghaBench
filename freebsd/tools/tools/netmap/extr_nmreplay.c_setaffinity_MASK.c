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
struct sched_param {int sched_priority; } ;
typedef  int /*<<< orphan*/  p ;
typedef  int /*<<< orphan*/  cpuset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PRIO_PROCESS ; 
 int /*<<< orphan*/  SCHED_RR ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sched_param*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(int i)
{
        cpuset_t cpumask;
	struct sched_param p;

        if (i == -1)
                return 0;

        /* Set thread affinity affinity.*/
        FUNC1(&cpumask);
        FUNC0(i, &cpumask);

        if (FUNC5(FUNC4(), sizeof(cpuset_t), &cpumask) != 0) {
                FUNC2("Unable to set affinity: %s", FUNC8(errno));
        }
	if (FUNC7(PRIO_PROCESS, 0, -10)) {; // XXX not meaningful
                FUNC2("Unable to set priority: %s", FUNC8(errno));
	}
	FUNC3(&p, sizeof(p));
	p.sched_priority = 10; // 99 on linux ?
	// use SCHED_RR or SCHED_FIFO
	if (FUNC6(0, SCHED_RR, &p)) {
                FUNC2("Unable to set scheduler: %s", FUNC8(errno));
	}
        return 0;
}