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
struct xbb_xen_reqlist {int /*<<< orphan*/  num_children; int /*<<< orphan*/  contig_req_list; int /*<<< orphan*/  nr_segments; int /*<<< orphan*/ * kva; } ;
struct xbb_softc {int flags; int /*<<< orphan*/  io_task; int /*<<< orphan*/  io_taskqueue; int /*<<< orphan*/  reqlist_free_stailq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct xbb_xen_reqlist*,int /*<<< orphan*/ ) ; 
 int XBBF_RESOURCE_SHORTAGE ; 
 int XBBF_SHUTDOWN ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xbb_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xbb_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xbb_softc*) ; 

__attribute__((used)) static inline void
FUNC6(struct xbb_softc *xbb, struct xbb_xen_reqlist *reqlist,
		    int wakeup)
{

	FUNC1(&xbb->lock, MA_OWNED);

	if (wakeup) {
		wakeup = xbb->flags & XBBF_RESOURCE_SHORTAGE;
		xbb->flags &= ~XBBF_RESOURCE_SHORTAGE;
	}

	if (reqlist->kva != NULL)
		FUNC3(xbb, reqlist->kva, reqlist->nr_segments);

	FUNC4(xbb, &reqlist->contig_req_list, reqlist->num_children);

	FUNC0(&xbb->reqlist_free_stailq, reqlist, links);

	if ((xbb->flags & XBBF_SHUTDOWN) != 0) {
		/*
		 * Shutdown is in progress.  See if we can
		 * progress further now that one more request
		 * has completed and been returned to the
		 * free pool.
		 */
		FUNC5(xbb);
	}

	if (wakeup != 0)
		FUNC2(xbb->io_taskqueue, &xbb->io_task); 
}