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
typedef  int /*<<< orphan*/  u_long ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvmd ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7(u_long addr, void *buf, size_t size)
{
	uint64_t *c;
	u_long *counters;
	size_t i, n;

	if (FUNC3() < 0)
		return (-1);

	if (size % sizeof(uint64_t) != 0) {
		FUNC6("kread_counters: invalid counter set size");
		return (-1);
	}

	n = size / sizeof(uint64_t);
	if ((counters = FUNC4(n * sizeof(u_long))) == NULL)
		FUNC5(-1, "malloc");
	if (FUNC1(addr, counters, n * sizeof(u_long)) < 0) {
		FUNC0(counters);
		return (-1);
	}

	c = buf;
	for (i = 0; i < n; i++)
		c[i] = FUNC2(kvmd, counters[i]);

	FUNC0(counters);
	return (0);
}