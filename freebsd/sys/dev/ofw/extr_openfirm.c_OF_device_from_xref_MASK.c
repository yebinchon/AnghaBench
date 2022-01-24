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
struct xrefinfo {int /*<<< orphan*/ * dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FIND_BY_XREF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ xref_init_done ; 
 struct xrefinfo* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

device_t
FUNC2(phandle_t xref)
{
	struct xrefinfo *xi;

	if (xref_init_done) {
		if ((xi = FUNC1(xref, FIND_BY_XREF)) == NULL)
			return (NULL);
		return (xi->dev);
	}
	FUNC0("Attempt to find device before xreflist_init");
}