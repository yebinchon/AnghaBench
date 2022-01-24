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
struct vmbus_softc {int /*<<< orphan*/  vmbus_rx_evtflags; } ;
struct vmbus_evtflags {int /*<<< orphan*/ * evt_flags; } ;

/* Variables and functions */
 int VMBUS_CHAN_MAX_COMPAT ; 
 int VMBUS_EVTFLAG_SHIFT ; 
 struct vmbus_evtflags* FUNC0 (struct vmbus_softc*,int /*<<< orphan*/ ,int) ; 
 int VMBUS_SINT_MESSAGE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  event_flags ; 
 int /*<<< orphan*/  FUNC2 (struct vmbus_softc*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(struct vmbus_softc *sc, int cpu)
{
	struct vmbus_evtflags *eventf;

	eventf = FUNC0(sc, event_flags, cpu) + VMBUS_SINT_MESSAGE;
	if (FUNC1(&eventf->evt_flags[0], 0)) {
		FUNC2(sc, sc->vmbus_rx_evtflags,
		    VMBUS_CHAN_MAX_COMPAT >> VMBUS_EVTFLAG_SHIFT);
	}
}