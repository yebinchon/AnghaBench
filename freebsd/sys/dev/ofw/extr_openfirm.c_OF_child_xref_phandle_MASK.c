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
typedef  int /*<<< orphan*/  rxref ;
typedef  scalar_t__ phandle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,char*,scalar_t__*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static phandle_t
FUNC3(phandle_t parent, phandle_t xref)
{
	phandle_t child, rxref;

	/*
	 * Recursively descend from parent, looking for a node with a property
	 * named either "phandle", "ibm,phandle", or "linux,phandle" that
	 * matches the xref we are looking for.
	 */

	for (child = FUNC0(parent); child != 0; child = FUNC2(child)) {
		rxref = FUNC3(child, xref);
		if (rxref != -1)
			return (rxref);

		if (FUNC1(child, "phandle", &rxref, sizeof(rxref)) ==
		    -1 && FUNC1(child, "ibm,phandle", &rxref,
		    sizeof(rxref)) == -1 && FUNC1(child,
		    "linux,phandle", &rxref, sizeof(rxref)) == -1)
			continue;

		if (rxref == xref)
			return (child);
	}

	return (-1);
}