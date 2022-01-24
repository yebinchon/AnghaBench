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
struct xrefinfo {int /*<<< orphan*/  xref; } ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FIND_BY_NODE ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ xref_init_done ; 
 struct xrefinfo* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

phandle_t
FUNC2(phandle_t node)
{
	struct xrefinfo *xi;
	phandle_t xref;

	if (xref_init_done) {
		if ((xi = FUNC1(node, FIND_BY_NODE)) == NULL)
			return (node);
		return (xi->xref);
	}

	if (FUNC0(node, "phandle", &xref, sizeof(xref)) == -1 &&
	    FUNC0(node, "ibm,phandle", &xref, sizeof(xref)) == -1 &&
	    FUNC0(node, "linux,phandle", &xref, sizeof(xref)) == -1)
		return (node);
	return (xref);
}