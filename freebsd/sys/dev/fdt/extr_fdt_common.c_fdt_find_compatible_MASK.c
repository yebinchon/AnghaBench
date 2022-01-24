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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const*) ; 
 scalar_t__ FUNC3 (scalar_t__,char const*) ; 

phandle_t
FUNC4(phandle_t start, const char *compat, int strict)
{
	phandle_t child;

	/*
	 * Traverse all children of 'start' node, and find first with
	 * matching 'compatible' property.
	 */
	for (child = FUNC0(start); child != 0; child = FUNC1(child))
		if (FUNC3(child, compat)) {
			if (strict)
				if (!FUNC2(child, compat))
					continue;
			return (child);
		}
	return (0);
}