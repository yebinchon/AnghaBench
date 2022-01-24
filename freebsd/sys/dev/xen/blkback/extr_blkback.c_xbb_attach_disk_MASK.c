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
struct xs_watch {int /*<<< orphan*/ * node; scalar_t__ callback_data; } ;
struct xbb_softc {int hotplug_done; scalar_t__ dev; int /*<<< orphan*/ * io_taskqueue; int /*<<< orphan*/  sector_size; void* xbb_stats_in; void* xbb_stats; int /*<<< orphan*/ * dev_name; int /*<<< orphan*/  flags; int /*<<< orphan*/ * dev_mode; int /*<<< orphan*/ * dev_type; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEVSTAT_ALL_SUPPORTED ; 
 int /*<<< orphan*/  DEVSTAT_PRIORITY_OTHER ; 
 int DEVSTAT_TYPE_DIRECT ; 
 int DEVSTAT_TYPE_IF_OTHER ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_XENBLOCKBACK ; 
 int /*<<< orphan*/  PWAIT ; 
 int /*<<< orphan*/  XBBF_READ_ONLY ; 
 int /*<<< orphan*/  XST_NIL ; 
 scalar_t__ XenbusStateInitialised ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct xbb_softc* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 void* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 
 int /*<<< orphan*/  FUNC8 (struct xbb_softc*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct xbb_softc*) ; 
 int FUNC10 (struct xbb_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct xbb_softc*) ; 
 int /*<<< orphan*/ * FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct xs_watch*) ; 

__attribute__((used)) static void
FUNC18(struct xs_watch *watch, const char **vec, unsigned int len)
{
	device_t		 dev;
	struct xbb_softc	*xbb;
	int			 error;

	dev = (device_t) watch->callback_data;
	xbb = FUNC1(dev);

	error = FUNC15(XST_NIL, FUNC12(dev), "physical-device-path",
	    NULL, &xbb->dev_name, NULL);
	if (error != 0)
		return;

	FUNC17(watch);
	FUNC4(watch->node, M_XENBLOCKBACK);
	watch->node = NULL;

	/* Collect physical device information. */
	error = FUNC15(XST_NIL, FUNC13(xbb->dev),
			  "device-type", NULL, &xbb->dev_type,
			  NULL);
	if (error != 0)
		xbb->dev_type = NULL;

	error = FUNC15(XST_NIL, FUNC12(dev),
                          "mode", NULL, &xbb->dev_mode,
                          NULL);
	if (error != 0) {
		FUNC8(xbb, error, "reading backend fields at %s",
				  FUNC12(dev));
                return;
        }

	/* Parse fopen style mode flags. */
	if (FUNC5(xbb->dev_mode, 'w') == NULL)
		xbb->flags |= XBBF_READ_ONLY;

	/*
	 * Verify the physical device is present and can support
	 * the desired I/O mode.
	 */
	error = FUNC10(xbb);
	if (error != 0) {
		FUNC8(xbb, error, "Unable to open %s",
				  xbb->dev_name);
		return;
	}

	/* Use devstat(9) for recording statistics. */
	xbb->xbb_stats = FUNC3("xbb", FUNC2(xbb->dev),
					   xbb->sector_size,
					   DEVSTAT_ALL_SUPPORTED,
					   DEVSTAT_TYPE_DIRECT
					 | DEVSTAT_TYPE_IF_OTHER,
					   DEVSTAT_PRIORITY_OTHER);

	xbb->xbb_stats_in = FUNC3("xbbi", FUNC2(xbb->dev),
					      xbb->sector_size,
					      DEVSTAT_ALL_SUPPORTED,
					      DEVSTAT_TYPE_DIRECT
					    | DEVSTAT_TYPE_IF_OTHER,
					      DEVSTAT_PRIORITY_OTHER);
	/*
	 * Setup sysctl variables.
	 */
	FUNC11(xbb);

	/*
	 * Create a taskqueue for doing work that must occur from a
	 * thread context.
	 */
	xbb->io_taskqueue = FUNC6(FUNC0(dev),
						  M_NOWAIT,
						  taskqueue_thread_enqueue,
						  /*contxt*/&xbb->io_taskqueue);
	if (xbb->io_taskqueue == NULL) {
		FUNC8(xbb, error, "Unable to create taskqueue");
		return;
	}

	FUNC7(&xbb->io_taskqueue,
				/*num threads*/1,
				/*priority*/PWAIT,
				/*thread name*/
				"%s taskq", FUNC0(dev));

	/* Update hot-plug status to satisfy xend. */
	error = FUNC16(XST_NIL, FUNC12(xbb->dev),
			  "hotplug-status", "connected");
	if (error) {
		FUNC8(xbb, error, "writing %s/hotplug-status",
				  FUNC12(xbb->dev));
		return;
	}

	xbb->hotplug_done = true;

	/* The front end might be waiting for the backend, attach if so. */
	if (FUNC14(xbb->dev) == XenbusStateInitialised)
		FUNC9(xbb);
}