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
struct ipmi_softc {int ipmi_detaching; int /*<<< orphan*/  ipmi_requests_lock; int /*<<< orphan*/  ipmi_io_lock; scalar_t__ ipmi_irq; int /*<<< orphan*/  ipmi_irq_res; scalar_t__ ipmi_kthread; int /*<<< orphan*/  ipmi_request_added; scalar_t__ ipmi_power_cycle_tag; scalar_t__ ipmi_watchdog_tag; scalar_t__ ipmi_shutdown_tag; scalar_t__ ipmi_cdev; scalar_t__ ipmi_opened; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct ipmi_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ipmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shutdown_final ; 
 int /*<<< orphan*/  shutdown_pre_sync ; 
 int /*<<< orphan*/  watchdog_list ; 

int
FUNC11(device_t dev)
{
	struct ipmi_softc *sc;

	sc = FUNC6(dev);

	/* Fail if there are any open handles. */
	FUNC1(sc);
	if (sc->ipmi_opened) {
		FUNC2(sc);
		return (EBUSY);
	}
	FUNC2(sc);
	if (sc->ipmi_cdev)
		FUNC5(sc->ipmi_cdev);

	/* Detach from watchdog handling and turn off watchdog. */
	if (sc->ipmi_shutdown_tag)
		FUNC0(shutdown_pre_sync,
		sc->ipmi_shutdown_tag);
	if (sc->ipmi_watchdog_tag) {
		FUNC0(watchdog_list, sc->ipmi_watchdog_tag);
		FUNC8(sc, 0);
	}

	/* Detach from shutdown handling for power cycle reboot */
	if (sc->ipmi_power_cycle_tag)
		FUNC0(shutdown_final, sc->ipmi_power_cycle_tag);

	/* XXX: should use shutdown callout I think. */
	/* If the backend uses a kthread, shut it down. */
	FUNC1(sc);
	sc->ipmi_detaching = 1;
	if (sc->ipmi_kthread) {
		FUNC4(&sc->ipmi_request_added);
		FUNC9(sc->ipmi_kthread, &sc->ipmi_requests_lock, 0,
		    "ipmi_wait", 0);
	}
	FUNC2(sc);
	if (sc->ipmi_irq)
		FUNC3(dev, sc->ipmi_irq_res, sc->ipmi_irq);

	FUNC7(dev);
	FUNC10(&sc->ipmi_io_lock);
	FUNC10(&sc->ipmi_requests_lock);
	return (0);
}