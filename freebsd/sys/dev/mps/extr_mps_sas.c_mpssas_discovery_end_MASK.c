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
struct mpssas_softc {int flags; int /*<<< orphan*/  discovery_callout; struct mps_softc* sc; } ;
struct mps_softc {int /*<<< orphan*/  device_check_callout; scalar_t__ track_mapping_events; } ;

/* Variables and functions */
 int MPSSAS_DISCOVERY_TIMEOUT_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct mps_softc*) ; 
 int MPS_MAPPING ; 
 int MPS_MISSING_CHECK_DELAY ; 
 int MPS_XINFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct mps_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (struct mps_softc*,int,char*) ; 
 int /*<<< orphan*/  mps_mapping_check_devices ; 

void
FUNC4(struct mpssas_softc *sassc)
{
	struct mps_softc *sc = sassc->sc;

	FUNC0(sc);

	if (sassc->flags & MPSSAS_DISCOVERY_TIMEOUT_PENDING)
		FUNC2(&sassc->discovery_callout);

	/*
	 * After discovery has completed, check the mapping table for any
	 * missing devices and update their missing counts. Only do this once
	 * whenever the driver is initialized so that missing counts aren't
	 * updated unnecessarily. Note that just because discovery has
	 * completed doesn't mean that events have been processed yet. The
	 * check_devices function is a callout timer that checks if ALL devices
	 * are missing. If so, it will wait a little longer for events to
	 * complete and keep resetting itself until some device in the mapping
	 * table is not missing, meaning that event processing has started.
	 */
	if (sc->track_mapping_events) {
		FUNC3(sc, MPS_XINFO | MPS_MAPPING, "Discovery has "
		    "completed. Check for missing devices in the mapping "
		    "table.\n");
		FUNC1(&sc->device_check_callout,
		    MPS_MISSING_CHECK_DELAY * hz, mps_mapping_check_devices,
		    sc);
	}
}