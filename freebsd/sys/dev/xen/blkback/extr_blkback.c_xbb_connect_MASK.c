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
struct xbb_softc {int max_reqlist_segments; int max_request_segments; int max_requests; int max_reqlist_size; int /*<<< orphan*/  dev; int /*<<< orphan*/  flags; int /*<<< orphan*/  hotplug_done; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  XBBF_SHUTDOWN ; 
 int /*<<< orphan*/  XBB_MAX_SEGMENTS_PER_REQLIST ; 
 int /*<<< orphan*/  XenbusStateConnected ; 
 scalar_t__ XenbusStateInitWait ; 
 int FUNC1 (struct xbb_softc*) ; 
 int FUNC2 (struct xbb_softc*) ; 
 int FUNC3 (struct xbb_softc*) ; 
 scalar_t__ FUNC4 (struct xbb_softc*) ; 
 int FUNC5 (struct xbb_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct xbb_softc*) ; 
 scalar_t__ FUNC7 (struct xbb_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct xbb_softc *xbb)
{
	int error;

	if (!xbb->hotplug_done ||
	    (FUNC9(xbb->dev) != XenbusStateInitWait) ||
	    (FUNC4(xbb) != 0))
		return;

	xbb->flags &= ~XBBF_SHUTDOWN;

	/*
	 * We limit the maximum number of reqlist segments to the maximum
	 * number of segments in the ring, or our absolute maximum,
	 * whichever is smaller.
	 */
	xbb->max_reqlist_segments = FUNC0(xbb->max_request_segments *
		xbb->max_requests, XBB_MAX_SEGMENTS_PER_REQLIST);

	/*
	 * The maximum size is simply a function of the number of segments
	 * we can handle.
	 */
	xbb->max_reqlist_size = xbb->max_reqlist_segments * PAGE_SIZE;

	/* Allocate resources whose size depends on front-end configuration. */
	error = FUNC1(xbb);
	if (error != 0) {
		FUNC8(xbb->dev, error,
				 "Unable to allocate communication memory");
		return;
	}

	error = FUNC3(xbb);
	if (error != 0) {
		/* Specific errors are reported by xbb_alloc_requests(). */
		return;
	}

	error = FUNC2(xbb);
	if (error != 0) {
		/* Specific errors are reported by xbb_alloc_request_lists(). */
		return;
	}

	/*
	 * Connect communication channel.
	 */
	error = FUNC5(xbb);
	if (error != 0) {
		/* Specific errors are reported by xbb_connect_ring(). */
		return;
	}
	
	if (FUNC7(xbb) != 0) {
		/*
		 * If we can't publish our data, we cannot participate
		 * in this connection, and waiting for a front-end state
		 * change will not help the situation.
		 */
		(void)FUNC6(xbb);
		return;
	}

	/* Ready for I/O. */
	FUNC10(xbb->dev, XenbusStateConnected);
}