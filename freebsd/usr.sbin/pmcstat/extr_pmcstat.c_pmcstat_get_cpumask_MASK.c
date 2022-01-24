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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC5 (char*,char*) ; 
 int FUNC6 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(const char *cpuspec, cpuset_t *cpumask)
{
	int cpu;
	const char *s;
	char *end;

	FUNC2(cpumask);
	s = cpuspec;

	do {
		cpu = FUNC6(s, &end, 0);
		if (cpu < 0 || end == s)
			FUNC4(EX_USAGE,
			    "ERROR: Illegal CPU specification \"%s\".",
			    cpuspec);
		FUNC1(cpu, cpumask);
		s = end + FUNC5(end, ", \t");
	} while (*s);
	FUNC3(!FUNC0(cpumask));
}