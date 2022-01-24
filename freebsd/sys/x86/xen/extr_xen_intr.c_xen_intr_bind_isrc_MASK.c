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
struct xenisrc {size_t xi_port; int /*<<< orphan*/  xi_intsrc; int /*<<< orphan*/  xi_vector; int /*<<< orphan*/  xi_refcount; } ;
typedef  size_t evtchn_port_t ;
typedef  enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef  enum evtchn_type { ____Placeholder_evtchn_type } evtchn_type ;
typedef  int /*<<< orphan*/ * driver_intr_t ;
typedef  int /*<<< orphan*/ * driver_filter_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int EVTCHN_TYPE_PORT ; 
 int /*<<< orphan*/  XEN_ALLOCATE_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ *) ; 
 struct xenisrc* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct xenisrc* FUNC8 (int) ; 
 int /*<<< orphan*/  xen_intr_isrc_lock ; 
 struct xenisrc** xen_intr_port_to_isrc ; 
 int /*<<< orphan*/  FUNC9 (struct xenisrc*) ; 

__attribute__((used)) static int
FUNC10(struct xenisrc **isrcp, evtchn_port_t local_port,
    enum evtchn_type type, const char *intr_owner, driver_filter_t filter,
    driver_intr_t handler, void *arg, enum intr_type flags,
    xen_intr_handle_t *port_handlep)
{
	struct xenisrc *isrc;
	int error;

	*isrcp = NULL;
	if (port_handlep == NULL) {
		FUNC3("%s: xen_intr_bind_isrc: Bad event handle\n",
		    intr_owner);
		return (EINVAL);
	}

	FUNC1(&xen_intr_isrc_lock);
	isrc = FUNC8(type);
	if (isrc == NULL) {
		isrc = FUNC6(type, XEN_ALLOCATE_VECTOR);
		if (isrc == NULL) {
			FUNC2(&xen_intr_isrc_lock);
			return (ENOSPC);
		}
	}
	isrc->xi_port = local_port;
	xen_intr_port_to_isrc[local_port] = isrc;
	FUNC4(&isrc->xi_refcount, 1);
	FUNC2(&xen_intr_isrc_lock);

	/* Assign the opaque handler (the event channel port) */
	*port_handlep = &isrc->xi_vector;

#ifdef SMP
	if (type == EVTCHN_TYPE_PORT) {
		/*
		 * By default all interrupts are assigned to vCPU#0
		 * unless specified otherwise, so shuffle them to balance
		 * the interrupt load.
		 */
		xen_intr_assign_cpu(&isrc->xi_intsrc, intr_next_cpu(0));
	}
#endif

	if (filter == NULL && handler == NULL) {
		/*
		 * No filter/handler provided, leave the event channel
		 * masked and without a valid handler, the caller is
		 * in charge of setting that up.
		 */
		*isrcp = isrc;
		return (0);
	}

	error = FUNC5(intr_owner, filter, handler, arg, flags,
	    *port_handlep);
	if (error != 0) {
		FUNC9(isrc);
		return (error);
	}
	*isrcp = isrc;
	return (0);
}