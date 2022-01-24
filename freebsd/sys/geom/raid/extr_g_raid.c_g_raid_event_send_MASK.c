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
struct g_raid_volume {struct g_raid_softc* v_softc; } ;
struct g_raid_subdisk {struct g_raid_softc* sd_softc; } ;
struct g_raid_softc {int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_queue_mtx; int /*<<< orphan*/  sc_events; } ;
struct g_raid_event {int e_event; int e_flags; int e_error; void* e_tgt; } ;
struct g_raid_disk {struct g_raid_softc* d_softc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,struct g_raid_softc*,char*,struct g_raid_event*,...) ; 
 int G_RAID_EVENT_DISK ; 
 int G_RAID_EVENT_DONE ; 
 int G_RAID_EVENT_SUBDISK ; 
 int G_RAID_EVENT_VOLUME ; 
 int G_RAID_EVENT_WAIT ; 
 int /*<<< orphan*/  FUNC1 (int,struct g_raid_event*,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_RAID ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int PDROP ; 
 int PRIBIO ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct g_raid_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  e_next ; 
 int /*<<< orphan*/  FUNC3 (struct g_raid_event*) ; 
 int hz ; 
 struct g_raid_event* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct g_raid_softc*) ; 

int
FUNC12(void *arg, int event, int flags)
{
	struct g_raid_softc *sc;
	struct g_raid_event *ep;
	int error;

	if ((flags & G_RAID_EVENT_VOLUME) != 0) {
		sc = ((struct g_raid_volume *)arg)->v_softc;
	} else if ((flags & G_RAID_EVENT_DISK) != 0) {
		sc = ((struct g_raid_disk *)arg)->d_softc;
	} else if ((flags & G_RAID_EVENT_SUBDISK) != 0) {
		sc = ((struct g_raid_subdisk *)arg)->sd_softc;
	} else {
		sc = arg;
	}
	ep = FUNC4(sizeof(*ep), M_RAID,
	    FUNC9(&sc->sc_lock) ? M_WAITOK : M_NOWAIT);
	if (ep == NULL)
		return (ENOMEM);
	ep->e_tgt = arg;
	ep->e_event = event;
	ep->e_flags = flags;
	ep->e_error = 0;
	FUNC0(4, sc, "Sending event %p. Waking up %p.", ep, sc);
	FUNC5(&sc->sc_queue_mtx);
	FUNC2(&sc->sc_events, ep, e_next);
	FUNC6(&sc->sc_queue_mtx);
	FUNC11(sc);

	if ((flags & G_RAID_EVENT_WAIT) == 0)
		return (0);

	FUNC7(&sc->sc_lock, SX_XLOCKED);
	FUNC0(4, sc, "Sleeping on %p.", ep);
	FUNC10(&sc->sc_lock);
	while ((ep->e_flags & G_RAID_EVENT_DONE) == 0) {
		FUNC5(&sc->sc_queue_mtx);
		FUNC1(error, ep, &sc->sc_queue_mtx, PRIBIO | PDROP, "m:event",
		    hz * 5);
	}
	error = ep->e_error;
	FUNC3(ep);
	FUNC8(&sc->sc_lock);
	return (error);
}