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
typedef  size_t u_int ;
struct xbb_xen_reqlist {struct xbb_xen_reqlist* gnt_handles; struct xbb_xen_reqlist* bounce; } ;
struct TYPE_2__ {size_t ring_pages; int /*<<< orphan*/ * handle; int /*<<< orphan*/ * bus_addr; scalar_t__ gnt_addr; } ;
struct xbb_softc {int flags; scalar_t__ active_request_count; int max_requests; struct xbb_xen_reqlist* request_lists; struct xbb_xen_reqlist* requests; TYPE_1__ ring_config; int /*<<< orphan*/  lock; int /*<<< orphan*/  io_task; int /*<<< orphan*/  io_taskqueue; int /*<<< orphan*/  xen_intr_handle; } ;
struct gnttab_unmap_grant_ref {int /*<<< orphan*/  handle; int /*<<< orphan*/  dev_bus_addr; scalar_t__ host_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  GNTTABOP_unmap_grant_ref ; 
 int FUNC1 (int /*<<< orphan*/ ,struct gnttab_unmap_grant_ref*,size_t) ; 
 int /*<<< orphan*/  M_XENBLOCKBACK ; 
 size_t PAGE_SIZE ; 
 int XBBF_RING_CONNECTED ; 
 int XBB_MAX_RING_PAGES ; 
 int /*<<< orphan*/  FUNC2 (struct xbb_xen_reqlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct xbb_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct xbb_softc *xbb)
{
	struct gnttab_unmap_grant_ref  ops[XBB_MAX_RING_PAGES];
	struct gnttab_unmap_grant_ref *op;
	u_int			       ring_idx;
	int			       error;

	FUNC0("\n");

	if ((xbb->flags & XBBF_RING_CONNECTED) == 0)
		return (0);

	FUNC4(&xbb->lock);
	FUNC8(&xbb->xen_intr_handle);
	FUNC6(xbb->io_taskqueue, &xbb->io_task); 
	FUNC3(&xbb->lock);

	/*
	 * No new interrupts can generate work, but we must wait
	 * for all currently active requests to drain.
	 */
	if (xbb->active_request_count != 0)
		return (EAGAIN);
	
	for (ring_idx = 0, op = ops;
	     ring_idx < xbb->ring_config.ring_pages;
	     ring_idx++, op++) {

		op->host_addr    = xbb->ring_config.gnt_addr
			         + (ring_idx * PAGE_SIZE);
		op->dev_bus_addr = xbb->ring_config.bus_addr[ring_idx];
		op->handle	 = xbb->ring_config.handle[ring_idx];
	}

	error = FUNC1(GNTTABOP_unmap_grant_ref, ops,
					  xbb->ring_config.ring_pages);
	if (error != 0)
		FUNC5("Grant table op failed (%d)", error);

	FUNC7(xbb);

	if (xbb->requests != NULL) {
		FUNC2(xbb->requests, M_XENBLOCKBACK);
		xbb->requests = NULL;
	}

	if (xbb->request_lists != NULL) {
		struct xbb_xen_reqlist *reqlist;
		int i;

		/* There is one request list for ever allocated request. */
		for (i = 0, reqlist = xbb->request_lists;
		     i < xbb->max_requests; i++, reqlist++){
#ifdef XBB_USE_BOUNCE_BUFFERS
			if (reqlist->bounce != NULL) {
				free(reqlist->bounce, M_XENBLOCKBACK);
				reqlist->bounce = NULL;
			}
#endif
			if (reqlist->gnt_handles != NULL) {
				FUNC2(reqlist->gnt_handles, M_XENBLOCKBACK);
				reqlist->gnt_handles = NULL;
			}
		}
		FUNC2(xbb->request_lists, M_XENBLOCKBACK);
		xbb->request_lists = NULL;
	}

	xbb->flags &= ~XBBF_RING_CONNECTED;
	return (0);
}