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
 int CN_INTERNAL ; 
 int CN_NORMAL ; 
 int /*<<< orphan*/  SC_DRIVER_NAME ; 
 int SC_KERNEL_CONSOLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,char*,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,char*,char const**) ; 

int
FUNC3(int *unit, int *flags)
{
	const char *at;
	int f, u;

	*unit = -1;
	for (u = 0; u < 16; u++) {
		if (FUNC0(SC_DRIVER_NAME, u))
			continue;
		if (FUNC2(SC_DRIVER_NAME, u, "at", &at) != 0)
			continue;
		if (FUNC1(SC_DRIVER_NAME, u, "flags", &f) != 0)
			f = 0;
		if (f & SC_KERNEL_CONSOLE) {
			/* the user designates this unit to be the console */
			*unit = u;
			*flags = f;
			break;
		}
		if (*unit < 0) {
			/* ...otherwise remember the first found unit */
			*unit = u;
			*flags = f;
		}
	}
	if (*unit < 0) {
		*unit = 0;
		*flags = 0;
	}
#if 0
	return ((*flags & SC_KERNEL_CONSOLE) != 0 ? CN_INTERNAL : CN_NORMAL);
#endif
	return (CN_INTERNAL);
}