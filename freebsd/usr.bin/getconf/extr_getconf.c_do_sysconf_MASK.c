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
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 long FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(const char *name, int key)
{
	long value;

	errno = 0;
	value = FUNC2(key);
	if (value == -1 && errno != 0)
		FUNC0(EX_OSERR, "sysconf: %s", name);
	else if (value == -1)
		FUNC1("undefined\n");
	else
		FUNC1("%ld\n", value);
}