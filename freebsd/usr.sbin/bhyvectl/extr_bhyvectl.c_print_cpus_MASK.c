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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/  const*) ; 
 int CPU_SETSIZE ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(const char *banner, const cpuset_t *cpus)
{
	int i, first;

	first = 1;
	FUNC2("%s:\t", banner);
	if (!FUNC0(cpus)) {
		for (i = 0; i < CPU_SETSIZE; i++) {
			if (FUNC1(i, cpus)) {
				FUNC2("%s%d", first ? " " : ", ", i);
				first = 0;
			}
		}
	} else
		FUNC2(" (none)");
	FUNC2("\n");
}