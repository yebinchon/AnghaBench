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
typedef  int /*<<< orphan*/ * xen_intr_handle_t ;
struct xenisrc {int /*<<< orphan*/ * xi_cookie; int /*<<< orphan*/  xi_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct xenisrc* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xen_intr_isrc_lock ; 
 int /*<<< orphan*/  FUNC6 (struct xenisrc*) ; 

void
FUNC7(xen_intr_handle_t *port_handlep)
{
	struct xenisrc *isrc;

	FUNC0(port_handlep != NULL,
	    ("NULL xen_intr_handle_t passed to xen_intr_unbind"));

	isrc = FUNC5(*port_handlep);
	*port_handlep = NULL;
	if (isrc == NULL)
		return;

	FUNC2(&xen_intr_isrc_lock);
	if (FUNC4(&isrc->xi_refcount) == 0) {
		FUNC3(&xen_intr_isrc_lock);
		return;
	}
	FUNC3(&xen_intr_isrc_lock);

	if (isrc->xi_cookie != NULL)
		FUNC1(isrc->xi_cookie);
	FUNC6(isrc);
}