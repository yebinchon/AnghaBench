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
 int EINVAL ; 
 char* FUNC0 (char const*,long*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 

__attribute__((used)) static int
FUNC3(const char *param, const char *args[], long *val)
{
	char *p;

	if (FUNC1(param, args[0]) != 0)
		return (EINVAL);

	p = FUNC0(args[1], val, NULL);
	if (*p) {
		FUNC2("parameter \"%s\" has bad value \"%s\"", args[0],
		    args[1]);
		return (EINVAL);
	}

	return (0);
}