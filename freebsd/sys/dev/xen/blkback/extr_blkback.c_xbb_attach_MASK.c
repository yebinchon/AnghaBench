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
typedef  scalar_t__ u_int ;
struct TYPE_2__ {uintptr_t callback_data; int /*<<< orphan*/ * node; int /*<<< orphan*/  callback; } ;
struct xbb_softc {TYPE_1__ hotplug_watch; scalar_t__ dev; int /*<<< orphan*/  hotplug_done; int /*<<< orphan*/  lock; int /*<<< orphan*/  io_task; int /*<<< orphan*/  otherend_id; } ;
struct sbuf {int dummy; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_XENBLOCKBACK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xbb_softc*) ; 
 int /*<<< orphan*/  XBB_MAX_RING_PAGES ; 
 int /*<<< orphan*/  XST_NIL ; 
 int /*<<< orphan*/  XenbusStateInitWait ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct xbb_softc* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct sbuf*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xbb_attach_disk ; 
 int /*<<< orphan*/  FUNC11 (struct xbb_softc*,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xbb_run_queue ; 
 int /*<<< orphan*/ * FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct sbuf* FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,...) ; 
 int FUNC17 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct xbb_softc	*xbb;
	int			 error;
	u_int			 max_ring_page_order;
	struct sbuf		*watch_path;

	FUNC0("Attaching to %s\n", FUNC12(dev));

	/*
	 * Basic initialization.
	 * After this block it is safe to call xbb_detach()
	 * to clean up any allocated data for this instance.
	 */
	xbb = FUNC4(dev);
	xbb->dev = dev;
	xbb->otherend_id = FUNC13(dev);
	FUNC2(&xbb->io_task, /*priority*/0, xbb_run_queue, xbb);
	FUNC7(&xbb->lock, FUNC3(dev), NULL, MTX_DEF);

	/*
	 * Publish protocol capabilities for consumption by the
	 * front-end.
	 */
	error = FUNC16(XST_NIL, FUNC12(xbb->dev),
			  "feature-barrier", "1");
	if (error) {
		FUNC11(xbb, error, "writing %s/feature-barrier",
				  FUNC12(xbb->dev));
		return (error);
	}

	error = FUNC16(XST_NIL, FUNC12(xbb->dev),
			  "feature-flush-cache", "1");
	if (error) {
		FUNC11(xbb, error, "writing %s/feature-flush-cache",
				  FUNC12(xbb->dev));
		return (error);
	}

	max_ring_page_order = FUNC5(XBB_MAX_RING_PAGES) - 1;
	error = FUNC16(XST_NIL, FUNC12(xbb->dev),
			  "max-ring-page-order", "%u", max_ring_page_order);
	if (error) {
		FUNC11(xbb, error, "writing %s/max-ring-page-order",
				  FUNC12(xbb->dev));
		return (error);
	}

	/*
	 * We need to wait for hotplug script execution before
	 * moving forward.
	 */
	FUNC1(!xbb->hotplug_done, ("Hotplug scripts already executed"));
	watch_path = FUNC15(FUNC12(xbb->dev), "physical-device-path");
	xbb->hotplug_watch.callback_data = (uintptr_t)dev;
	xbb->hotplug_watch.callback = xbb_attach_disk;
	FUNC1(xbb->hotplug_watch.node == NULL, ("watch node already setup"));
	xbb->hotplug_watch.node = FUNC10(FUNC8(watch_path), M_XENBLOCKBACK);
	FUNC9(watch_path);
	error = FUNC17(&xbb->hotplug_watch);
	if (error != 0) {
		FUNC11(xbb, error, "failed to create watch on %s",
		    xbb->hotplug_watch.node);
		FUNC6(xbb->hotplug_watch.node, M_XENBLOCKBACK);
		return (error);
	}

	/* Tell the toolstack blkback has attached. */
	FUNC14(dev, XenbusStateInitWait);

	return (0);
}