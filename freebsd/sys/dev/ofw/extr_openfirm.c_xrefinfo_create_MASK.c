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
typedef  int /*<<< orphan*/  xref ;
struct xrefinfo {scalar_t__ xref; scalar_t__ node; } ;
typedef  scalar_t__ phandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_OFWPROP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,char*,scalar_t__*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct xrefinfo*,int /*<<< orphan*/ ) ; 
 struct xrefinfo* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next_entry ; 
 int /*<<< orphan*/  xreflist ; 

__attribute__((used)) static void
FUNC5(phandle_t node)
{
	struct xrefinfo * xi;
	phandle_t child, xref;

	/*
	 * Recursively descend from parent, looking for nodes with a property
	 * named either "phandle", "ibm,phandle", or "linux,phandle".  For each
	 * such node found create an entry in the xreflist.
	 */
	for (child = FUNC0(node); child != 0; child = FUNC2(child)) {
		FUNC5(child);
		if (FUNC1(child, "phandle", &xref, sizeof(xref)) ==
		    -1 && FUNC1(child, "ibm,phandle", &xref,
		    sizeof(xref)) == -1 && FUNC1(child,
		    "linux,phandle", &xref, sizeof(xref)) == -1)
			continue;
		xi = FUNC4(sizeof(*xi), M_OFWPROP, M_WAITOK | M_ZERO);
		xi->node = child;
		xi->xref = xref;
		FUNC3(&xreflist, xi, next_entry);
	}
}