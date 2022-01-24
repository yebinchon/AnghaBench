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
struct xrefinfo {int /*<<< orphan*/  dev; void* xref; void* node; } ;
typedef  void* phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_OFWPROP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct xrefinfo*,int /*<<< orphan*/ ) ; 
 struct xrefinfo* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  next_entry ; 
 int /*<<< orphan*/  xreflist ; 
 int /*<<< orphan*/  xreflist_lock ; 

__attribute__((used)) static struct xrefinfo *
FUNC4(phandle_t node, phandle_t xref, device_t dev)
{
	struct xrefinfo *xi;

	xi = FUNC1(sizeof(*xi), M_OFWPROP, M_WAITOK);
	xi->node = node;
	xi->xref = xref;
	xi->dev  = dev;
	FUNC2(&xreflist_lock);
	FUNC0(&xreflist, xi, next_entry);
	FUNC3(&xreflist_lock);
	return (xi);
}