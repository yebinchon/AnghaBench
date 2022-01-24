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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  portnode ;
typedef  scalar_t__ phandle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char*,int*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int PORT_MAX_NAME ; 
 scalar_t__ FUNC3 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

phandle_t
FUNC5(phandle_t node, uint32_t idx)
{
	phandle_t ports, child;
	uint32_t reg;
	char portnode[PORT_MAX_NAME];

	/* First try to find a port@<idx> node */
	FUNC4(portnode, sizeof(portnode), "port@%d", idx);
	child = FUNC3(node, portnode);
	if (child != 0)
		return (child);

	/* Next try to look under ports */
	ports = FUNC3(node, "ports");
	if (ports == 0)
		return (0);

	for (child = FUNC0(ports); child != 0; child = FUNC2(child)) {
		if (FUNC1(child, "reg", &reg, sizeof(uint32_t)) <= 0 ||
		    reg != idx)
			continue;

		return (child);
	}

	return (0);
}