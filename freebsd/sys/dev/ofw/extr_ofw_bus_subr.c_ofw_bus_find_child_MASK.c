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
typedef  scalar_t__ phandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_OFWPROP ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,char*,void**) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 

phandle_t
FUNC5(phandle_t start, const char *child_name)
{
	char *name;
	int ret;
	phandle_t child;

	for (child = FUNC0(start); child != 0; child = FUNC2(child)) {
		ret = FUNC1(child, "name", (void **)&name);
		if (ret == -1)
			continue;
		if (FUNC4(name, child_name) == 0) {
			FUNC3(name, M_OFWPROP);
			return (child);
		}

		FUNC3(name, M_OFWPROP);
	}

	return (0);
}