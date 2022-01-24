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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * t4_cloner ; 
 int /*<<< orphan*/  t4_trace_lock ; 

void
FUNC2()
{

	if (t4_cloner != NULL) {
		/*
		 * The module is being unloaded so the nexus drivers have
		 * detached.  The tracing interfaces can not outlive the nexus
		 * (ifp->if_softc is the nexus) and must have been destroyed
		 * already.  XXX: but if_clone is opaque to us and we can't
		 * assert LIST_EMPTY(&t4_cloner->ifc_iflist) at this time.
		 */
		FUNC0(t4_cloner);
	}
	FUNC1(&t4_trace_lock);
}