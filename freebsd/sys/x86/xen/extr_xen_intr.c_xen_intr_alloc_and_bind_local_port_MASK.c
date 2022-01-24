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
typedef  int /*<<< orphan*/  xen_intr_handle_t ;
typedef  int /*<<< orphan*/  u_int ;
struct xenisrc {int xi_close; } ;
struct evtchn_alloc_unbound {int /*<<< orphan*/  port; int /*<<< orphan*/  remote_dom; int /*<<< orphan*/  dom; } ;
typedef  struct evtchn_alloc_unbound evtchn_close_t ;
typedef  enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_SELF ; 
 int /*<<< orphan*/  EVTCHNOP_alloc_unbound ; 
 int /*<<< orphan*/  EVTCHNOP_close ; 
 int /*<<< orphan*/  EVTCHN_TYPE_PORT ; 
 int FUNC0 (int /*<<< orphan*/ ,struct evtchn_alloc_unbound*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct xenisrc**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *) ; 

int
FUNC4(device_t dev, u_int remote_domain,
    driver_filter_t filter, driver_intr_t handler, void *arg,
    enum intr_type flags, xen_intr_handle_t *port_handlep)
{
	struct xenisrc *isrc;
	struct evtchn_alloc_unbound alloc_unbound;
	int error;

	alloc_unbound.dom        = DOMID_SELF;
	alloc_unbound.remote_dom = remote_domain;
	error = FUNC0(EVTCHNOP_alloc_unbound,
		    &alloc_unbound);
	if (error != 0) {
		/*
		 * XXX Trap Hypercall error code Linuxisms in
		 *     the HYPERCALL layer.
		 */
		return (-error);
	}

	error = FUNC3(&isrc, alloc_unbound.port, EVTCHN_TYPE_PORT,
	    FUNC1(dev), filter, handler, arg, flags,
	    port_handlep);
	if (error != 0) {
		evtchn_close_t close = { .port = alloc_unbound.port };
		if (FUNC0(EVTCHNOP_close, &close))
			FUNC2("EVTCHNOP_close failed");
		return (error);
	}

	isrc->xi_close = 1;
	return (0);
}