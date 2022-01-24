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
struct cyapa_softc {int /*<<< orphan*/  intr_hook; } ;
typedef  void* device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_POWER_MODE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cyapa_poll_thread ; 
 int /*<<< orphan*/  FUNC1 (struct cyapa_softc*,int /*<<< orphan*/ ) ; 
 struct cyapa_softc* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct cyapa_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(void *xdev)
{
	struct cyapa_softc *sc;
	device_t dev = xdev;

	sc = FUNC2(dev);

	FUNC0(&sc->intr_hook);

	/* Setup input event tracking */
	FUNC1(sc, CMD_POWER_MODE_IDLE);

	/* Start the polling thread */
	FUNC3(cyapa_poll_thread, sc, NULL, NULL,
	    0, 0, "cyapa-poll");
}