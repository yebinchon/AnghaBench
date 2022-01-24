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
struct vmbus_softc {int /*<<< orphan*/  vmbus_dev; int /*<<< orphan*/  vmbus_scandone; void* vmbus_subchtq; int /*<<< orphan*/  vmbus_scandone_task; void* vmbus_devtq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIANT_REQUIRED ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vmbus_softc*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC6 (void**,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 
 int FUNC7 (struct vmbus_softc*) ; 
 int /*<<< orphan*/  vmbus_scan_done_task ; 

__attribute__((used)) static int
FUNC8(struct vmbus_softc *sc)
{
	int error;

	/*
	 * Identify, probe and attach for non-channel devices.
	 */
	FUNC2(sc->vmbus_dev);
	FUNC1(sc->vmbus_dev);

	/*
	 * This taskqueue serializes vmbus devices' attach and detach
	 * for channel offer and rescind messages.
	 */
	sc->vmbus_devtq = FUNC5("vmbus dev", M_WAITOK,
	    taskqueue_thread_enqueue, &sc->vmbus_devtq);
	FUNC6(&sc->vmbus_devtq, 1, PI_NET, "vmbusdev");
	FUNC0(&sc->vmbus_scandone_task, 0, vmbus_scan_done_task, sc);

	/*
	 * This taskqueue handles sub-channel detach, so that vmbus
	 * device's detach running in vmbus_devtq can drain its sub-
	 * channels.
	 */
	sc->vmbus_subchtq = FUNC5("vmbus subch", M_WAITOK,
	    taskqueue_thread_enqueue, &sc->vmbus_subchtq);
	FUNC6(&sc->vmbus_subchtq, 1, PI_NET, "vmbussch");

	/*
	 * Start vmbus scanning.
	 */
	error = FUNC7(sc);
	if (error) {
		FUNC3(sc->vmbus_dev, "channel request failed: %d\n",
		    error);
		return (error);
	}

	/*
	 * Wait for all vmbus devices from the initial channel offers to be
	 * attached.
	 */
	GIANT_REQUIRED;
	while (!sc->vmbus_scandone)
		FUNC4(&sc->vmbus_scandone, &Giant, 0, "vmbusdev", 0);

	if (bootverbose) {
		FUNC3(sc->vmbus_dev, "device scan, probe and attach "
		    "done\n");
	}
	return (0);
}