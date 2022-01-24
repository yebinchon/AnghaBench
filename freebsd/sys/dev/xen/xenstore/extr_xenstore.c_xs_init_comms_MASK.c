#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ rsp_prod; scalar_t__ rsp_cons; } ;
struct TYPE_3__ {int /*<<< orphan*/  xen_intr_handle; int /*<<< orphan*/  evtchn; int /*<<< orphan*/  xs_dev; } ;

/* Variables and functions */
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* xen_store ; 
 TYPE_1__ xs ; 
 int /*<<< orphan*/  xs_intr ; 

__attribute__((used)) static int
FUNC3(void)
{
	int error;

	if (xen_store->rsp_prod != xen_store->rsp_cons) {
		FUNC0(LOG_WARNING, "XENSTORE response ring is not quiescent "
		    "(%08x:%08x): fixing up\n",
		    xen_store->rsp_cons, xen_store->rsp_prod);
		xen_store->rsp_cons = xen_store->rsp_prod;
	}

	FUNC2(&xs.xen_intr_handle);

	error = FUNC1(xs.xs_dev, xs.evtchn,
	    /*filter*/NULL, xs_intr, /*arg*/NULL, INTR_TYPE_NET|INTR_MPSAFE,
	    &xs.xen_intr_handle);
	if (error) {
		FUNC0(LOG_WARNING, "XENSTORE request irq failed %i\n", error);
		return (error);
	}

	return (0);
}