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
 scalar_t__ FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

size_t
FUNC6(phandle_t port)
{
	phandle_t child;
	char *name;
	size_t num = 0;
	int ret;

	for (num = 0, child = FUNC0(port); child != 0;
	     child = FUNC2(child)) {
		ret = FUNC1(child, "name", (void **)&name);
		if (ret == -1)
			continue;
		if (FUNC4(name, "endpoint") == 0)
			num++;
		else if (FUNC5(name, "endpoint@", 9) == 0)
			num++;
		FUNC3(name, M_OFWPROP);
	}

	return (num);
}