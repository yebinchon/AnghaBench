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
struct iwm_time_event_notif {int unique_id; int action; int status; } ;
struct iwm_softc {int sc_time_event_end_ticks; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_time_event_duration; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWM_DEBUG_TE ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int IWM_TE_V2_NOTIF_HOST_EVENT_END ; 
 int IWM_TE_V2_NOTIF_HOST_EVENT_START ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwm_softc*) ; 
 int FUNC5 (int) ; 
 int ticks ; 

__attribute__((used)) static void
FUNC6(struct iwm_softc *sc,
    struct iwm_time_event_notif *notif)
{
	FUNC0(sc, IWM_DEBUG_TE,
	    "Handle time event notif - UID = 0x%x action %d\n",
	    FUNC5(notif->unique_id),
	    FUNC5(notif->action));

	if (!FUNC5(notif->status)) {
		const char *msg;

		if (notif->action & FUNC3(IWM_TE_V2_NOTIF_HOST_EVENT_START))
			msg = "Time Event start notification failure";
		else
			msg = "Time Event end notification failure";

		FUNC0(sc, IWM_DEBUG_TE, "%s\n", msg);
	}

	if (FUNC5(notif->action) & IWM_TE_V2_NOTIF_HOST_EVENT_END) {
		FUNC0(sc, IWM_DEBUG_TE,
		    "TE ended - current time %d, estimated end %d\n",
		    ticks, sc->sc_time_event_end_ticks);

		FUNC4(sc);
	} else if (FUNC5(notif->action) & IWM_TE_V2_NOTIF_HOST_EVENT_START) {
		sc->sc_time_event_end_ticks =
		    ticks + FUNC1(sc->sc_time_event_duration);
	} else {
		FUNC2(sc->sc_dev, "Got TE with unknown action\n");
	}
}