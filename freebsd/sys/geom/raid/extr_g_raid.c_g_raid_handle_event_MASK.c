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
struct g_raid_softc {int /*<<< orphan*/  sc_queue_mtx; } ;
struct g_raid_event {int e_flags; scalar_t__ e_error; int /*<<< orphan*/  e_event; int /*<<< orphan*/  e_tgt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct g_raid_softc*,char*,struct g_raid_event*) ; 
 int G_RAID_EVENT_DISK ; 
 int G_RAID_EVENT_DONE ; 
 int G_RAID_EVENT_SUBDISK ; 
 int G_RAID_EVENT_VOLUME ; 
 int G_RAID_EVENT_WAIT ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_raid_event*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct g_raid_event*) ; 

__attribute__((used)) static void
FUNC10(struct g_raid_softc *sc, struct g_raid_event *ep)
{

	if ((ep->e_flags & G_RAID_EVENT_VOLUME) != 0)
		ep->e_error = FUNC6(ep->e_tgt, ep->e_event);
	else if ((ep->e_flags & G_RAID_EVENT_DISK) != 0)
		ep->e_error = FUNC3(ep->e_tgt, ep->e_event);
	else if ((ep->e_flags & G_RAID_EVENT_SUBDISK) != 0)
		ep->e_error = FUNC5(ep->e_tgt, ep->e_event);
	else
		ep->e_error = FUNC4(ep->e_tgt, ep->e_event);
	if ((ep->e_flags & G_RAID_EVENT_WAIT) == 0) {
		FUNC1(ep->e_error == 0,
		    ("Error cannot be handled."));
		FUNC2(ep);
	} else {
		ep->e_flags |= G_RAID_EVENT_DONE;
		FUNC0(4, sc, "Waking up %p.", ep);
		FUNC7(&sc->sc_queue_mtx);
		FUNC9(ep);
		FUNC8(&sc->sc_queue_mtx);
	}
}