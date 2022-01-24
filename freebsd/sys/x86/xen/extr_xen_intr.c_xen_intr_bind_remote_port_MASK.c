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
typedef  void* u_int ;
struct xenisrc {int xi_close; } ;
struct evtchn_bind_interdomain {int /*<<< orphan*/  port; int /*<<< orphan*/  local_port; void* remote_port; void* remote_dom; } ;
typedef  struct evtchn_bind_interdomain evtchn_close_t ;
typedef  enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVTCHNOP_bind_interdomain ; 
 int /*<<< orphan*/  EVTCHNOP_close ; 
 int /*<<< orphan*/  EVTCHN_TYPE_PORT ; 
 int FUNC0 (int /*<<< orphan*/ ,struct evtchn_bind_interdomain*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct xenisrc**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *) ; 

int 
FUNC4(device_t dev, u_int remote_domain,
    u_int remote_port, driver_filter_t filter, driver_intr_t handler,
    void *arg, enum intr_type flags, xen_intr_handle_t *port_handlep)
{
	struct xenisrc *isrc;
	struct evtchn_bind_interdomain bind_interdomain;
	int error;

	bind_interdomain.remote_dom  = remote_domain;
	bind_interdomain.remote_port = remote_port;
	error = FUNC0(EVTCHNOP_bind_interdomain,
					    &bind_interdomain);
	if (error != 0) {
		/*
		 * XXX Trap Hypercall error code Linuxisms in
		 *     the HYPERCALL layer.
		 */
		return (-error);
	}

	error = FUNC3(&isrc, bind_interdomain.local_port,
	    EVTCHN_TYPE_PORT, FUNC1(dev), filter, handler, arg,
	    flags, port_handlep);
	if (error) {
		evtchn_close_t close = { .port = bind_interdomain.local_port };
		if (FUNC0(EVTCHNOP_close, &close))
			FUNC2("EVTCHNOP_close failed");
		return (error);
	}

	/*
	 * The Event Channel API opened this port, so it is
	 * responsible for closing it automatically on unbind.
	 */
	isrc->xi_close = 1;
	return (0);
}