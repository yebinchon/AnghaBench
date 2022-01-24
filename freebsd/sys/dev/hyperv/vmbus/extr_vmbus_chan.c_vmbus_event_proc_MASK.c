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
struct vmbus_softc {int dummy; } ;
struct vmbus_evtflags {int /*<<< orphan*/  evt_flags; } ;

/* Variables and functions */
 struct vmbus_evtflags* FUNC0 (struct vmbus_softc*,int /*<<< orphan*/ ,int) ; 
 int VMBUS_SINT_MESSAGE ; 
 int /*<<< orphan*/  event_flags ; 
 int /*<<< orphan*/  event_flags_cnt ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_softc*,int /*<<< orphan*/ ,struct vmbus_evtflags*) ; 

void
FUNC2(struct vmbus_softc *sc, int cpu)
{
	struct vmbus_evtflags *eventf;

	/*
	 * On Host with Win8 or above, the event page can be checked directly
	 * to get the id of the channel that has the pending interrupt.
	 */
	eventf = FUNC0(sc, event_flags, cpu) + VMBUS_SINT_MESSAGE;
	FUNC1(sc, eventf->evt_flags,
	    FUNC0(sc, event_flags_cnt, cpu));
}