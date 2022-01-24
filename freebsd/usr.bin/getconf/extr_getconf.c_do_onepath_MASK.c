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
 scalar_t__ EINVAL ; 
 scalar_t__ errno ; 
 long FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static void
FUNC3(const char *name, int key, const char *path)
{
	long value;

	errno = 0;
	value = FUNC0(path, key);
	if (value == -1 && errno != EINVAL && errno != 0)
		FUNC2("pathconf: %s", name);
	FUNC1("%s: ", name);
	if (value == -1)
		FUNC1("undefined\n");
	else
		FUNC1("%ld\n", value);
}