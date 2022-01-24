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
struct ipmi_softc {int ipmi_driver_requests_polled; int /*<<< orphan*/  ipmi_dev; int /*<<< orphan*/  ipmi_driver_request; int /*<<< orphan*/  ipmi_enqueue_request; int /*<<< orphan*/  ipmi_startup; } ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (struct ipmi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMIC_FLAGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ipmi_polled_enqueue_request ; 
 int /*<<< orphan*/  smic_driver_request ; 
 int /*<<< orphan*/  smic_startup ; 

int
FUNC2(struct ipmi_softc *sc)
{
	int flags;

	/* Setup function pointers. */
	sc->ipmi_startup = smic_startup;
	sc->ipmi_enqueue_request = ipmi_polled_enqueue_request;
	sc->ipmi_driver_request = smic_driver_request;
	sc->ipmi_driver_requests_polled = 1;

	/* See if we can talk to the controller. */
	flags = FUNC0(sc, SMIC_FLAGS);
	if (flags == 0xff) {
		FUNC1(sc->ipmi_dev, "couldn't find it\n");
		return (ENXIO);
	}

#ifdef SMIC_DEBUG
	device_printf(sc->ipmi_dev, "SMIC: initial state: %02x\n", flags);
#endif

	return (0);
}