#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
struct proc {int /*<<< orphan*/  p_pid; } ;
struct evtchn_alloc_unbound {scalar_t__ port; void* remote_dom; void* dom; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {int /*<<< orphan*/ * ich_arg; int /*<<< orphan*/  ich_func; } ;
struct TYPE_4__ {int initialized; scalar_t__ evtchn; int /*<<< orphan*/  xs_late_init; TYPE_3__ xs_attachcb; int /*<<< orphan*/  xenwatch_pid; int /*<<< orphan*/  watch_events_lock; int /*<<< orphan*/  registered_watches_lock; int /*<<< orphan*/  request_mutex; int /*<<< orphan*/  xenwatch_mutex; int /*<<< orphan*/  reply_lock; int /*<<< orphan*/  ring_lock; int /*<<< orphan*/  watch_events; int /*<<< orphan*/  reply_list; int /*<<< orphan*/  gpfn; int /*<<< orphan*/  xs_dev; } ;

/* Variables and functions */
 void* DOMID_SELF ; 
 int /*<<< orphan*/  EVTCHNOP_alloc_unbound ; 
 int FUNC0 (int /*<<< orphan*/ ,struct evtchn_alloc_unbound*) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  M_XENSTORE ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PAT_WRITE_BACK ; 
 int /*<<< orphan*/  RFHIGHPID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct proc**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ xen_store ; 
 int /*<<< orphan*/  xenwatch_thread ; 
 TYPE_1__ xs ; 
 int /*<<< orphan*/  xs_attach_deferred ; 
 int /*<<< orphan*/  xs_attach_late ; 
 int FUNC16 () ; 
 int /*<<< orphan*/  xs_rcv_thread ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	int error;

	/* Allow us to get device_t from softc and vice-versa. */
	xs.xs_dev = dev;
	FUNC5(dev, &xs);

	/* Initialize the interface to xenstore. */
	struct proc *p;

	xs.initialized = false;
	xs.evtchn = FUNC14();
	if (xs.evtchn == 0) {
		struct evtchn_alloc_unbound alloc_unbound;

		/* Allocate a local event channel for xenstore */
		alloc_unbound.dom = DOMID_SELF;
		alloc_unbound.remote_dom = DOMID_SELF;
		error = FUNC0(
		    EVTCHNOP_alloc_unbound, &alloc_unbound);
		if (error != 0)
			FUNC9(
			   "unable to alloc event channel for Dom0: %d",
			    error);

		xs.evtchn = alloc_unbound.port;

		/* Allocate memory for the xs shared ring */
		xen_store = FUNC7(PAGE_SIZE, M_XENSTORE, M_WAITOK | M_ZERO);
		xs.gpfn = FUNC3(FUNC10((vm_offset_t)xen_store));
	} else {
		xs.gpfn = FUNC15();
		xen_store = FUNC11(FUNC12(xs.gpfn), PAGE_SIZE,
		    PAT_WRITE_BACK);
		xs.initialized = true;
	}

	FUNC1(&xs.reply_list);
	FUNC1(&xs.watch_events);

	FUNC8(&xs.ring_lock, "ring lock", NULL, MTX_DEF);
	FUNC8(&xs.reply_lock, "reply lock", NULL, MTX_DEF);
	FUNC13(&xs.xenwatch_mutex, "xenwatch");
	FUNC13(&xs.request_mutex, "xenstore request");
	FUNC8(&xs.registered_watches_lock, "watches", NULL, MTX_DEF);
	FUNC8(&xs.watch_events_lock, "watch events", NULL, MTX_DEF);

	/* Initialize the shared memory rings to talk to xenstored */
	error = FUNC16();
	if (error)
		return (error);

	error = FUNC6(xenwatch_thread, NULL, &p, RFHIGHPID,
	    0, "xenwatch");
	if (error)
		return (error);
	xs.xenwatch_pid = p->p_pid;

	error = FUNC6(xs_rcv_thread, NULL, NULL,
	    RFHIGHPID, 0, "xenstore_rcv");

	xs.xs_attachcb.ich_func = xs_attach_deferred;
	xs.xs_attachcb.ich_arg = NULL;
	if (xs.initialized) {
		FUNC4(&xs.xs_attachcb);
	} else {
		FUNC2(&xs.xs_late_init, 0, xs_attach_late, NULL);
	}

	return (error);
}