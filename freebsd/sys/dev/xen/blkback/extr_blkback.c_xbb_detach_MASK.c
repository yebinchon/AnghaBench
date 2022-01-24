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
struct xbb_softc {int /*<<< orphan*/  lock; int /*<<< orphan*/ * dev_name; int /*<<< orphan*/ * dev_type; int /*<<< orphan*/ * dev_mode; int /*<<< orphan*/ * xbb_stats_in; int /*<<< orphan*/ * xbb_stats; int /*<<< orphan*/ * io_taskqueue; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  M_XENSTORE ; 
 struct xbb_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xbb_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct xbb_softc*) ; 
 scalar_t__ FUNC10 (struct xbb_softc*) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
        struct xbb_softc *xbb;

	FUNC0("\n");

        xbb = FUNC1(dev);
	FUNC6(&xbb->lock);
	while (FUNC10(xbb) == EAGAIN) {
		FUNC4(xbb, &xbb->lock, /*wakeup prio unchanged*/0,
		       "xbb_shutdown", 0);
	}
	FUNC7(&xbb->lock);

	FUNC0("\n");

	if (xbb->io_taskqueue != NULL)
		FUNC8(xbb->io_taskqueue);

	if (xbb->xbb_stats != NULL)
		FUNC2(xbb->xbb_stats);

	if (xbb->xbb_stats_in != NULL)
		FUNC2(xbb->xbb_stats_in);

	FUNC9(xbb);

	if (xbb->dev_mode != NULL) {
		FUNC3(xbb->dev_mode, M_XENSTORE);
		xbb->dev_mode = NULL;
	}

	if (xbb->dev_type != NULL) {
		FUNC3(xbb->dev_type, M_XENSTORE);
		xbb->dev_type = NULL;
	}

	if (xbb->dev_name != NULL) {
		FUNC3(xbb->dev_name, M_XENSTORE);
		xbb->dev_name = NULL;
	}

	FUNC5(&xbb->lock);
        return (0);
}