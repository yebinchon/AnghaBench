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
struct xrefinfo {int node; } ;
typedef  int phandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FIND_BY_XREF ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ xref_init_done ; 
 struct xrefinfo* FUNC2 (int,int /*<<< orphan*/ ) ; 

phandle_t
FUNC3(phandle_t xref)
{
	struct xrefinfo *xi;
	phandle_t node;

	if (xref_init_done) {
		if ((xi = FUNC2(xref, FIND_BY_XREF)) == NULL)
			return (xref);
		return (xi->node);
	}

	if ((node = FUNC0(FUNC1(0), xref)) == -1)
		return (xref);
	return (node);
}