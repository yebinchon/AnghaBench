#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * xen_intr_handle_t ;
typedef  size_t evtchn_port_t ;
struct TYPE_2__ {int /*<<< orphan*/  xi_vector; int /*<<< orphan*/  xi_refcount; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t NR_EVENT_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xen_intr_isrc_lock ; 
 TYPE_1__** xen_intr_port_to_isrc ; 

int
FUNC4(evtchn_port_t port, xen_intr_handle_t *handlep)
{

	if (!FUNC0(port) || port >= NR_EVENT_CHANNELS)
		return (EINVAL);

	if (handlep == NULL) {
		return (EINVAL);
	}

	FUNC1(&xen_intr_isrc_lock);
	if (xen_intr_port_to_isrc[port] == NULL) {
		FUNC2(&xen_intr_isrc_lock);
		return (EINVAL);
	}
	FUNC3(&xen_intr_port_to_isrc[port]->xi_refcount);
	FUNC2(&xen_intr_isrc_lock);

	/* Assign the opaque handler (the event channel port) */
	*handlep = &xen_intr_port_to_isrc[port]->xi_vector;

	return (0);
}