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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ phandle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char*,scalar_t__*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,char*) ; 

phandle_t
FUNC4(phandle_t port, uint32_t idx)
{
	phandle_t endpoint, child;
	uint32_t reg;

	/* First test if we have only one endpoint */
	endpoint = FUNC3(port, "endpoint");
	if (endpoint != 0)
		return (endpoint);

	/* Then test all childs based on the reg property */
	for (child = FUNC0(port); child != 0; child = FUNC2(child)) {
		if (FUNC1(child, "reg", &reg, sizeof(uint32_t)) <= 0 ||
		    reg != idx)
			continue;

		return (child);
	}

	return (0);
}