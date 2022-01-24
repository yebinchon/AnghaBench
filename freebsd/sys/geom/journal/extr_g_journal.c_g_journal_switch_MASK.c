#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct g_provider {scalar_t__ acw; scalar_t__ sectorsize; } ;
struct TYPE_6__ {int /*<<< orphan*/ * jj_queue; scalar_t__ jj_offset; } ;
struct TYPE_5__ {int /*<<< orphan*/ * jj_queue; scalar_t__ jj_offset; } ;
struct g_journal_softc {int sc_flags; int /*<<< orphan*/  sc_mtx; TYPE_3__ sc_active; scalar_t__ sc_journal_offset; TYPE_2__ sc_inactive; int /*<<< orphan*/  sc_journal_next_id; int /*<<< orphan*/  sc_journal_id; int /*<<< orphan*/  sc_journal_previous_id; struct g_provider* sc_jprovider; TYPE_1__* sc_geom; int /*<<< orphan*/  sc_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  provider; } ;

/* Variables and functions */
 int GJF_DEVICE_CLEAN ; 
 int GJF_DEVICE_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct g_journal_softc*) ; 
 scalar_t__ FUNC2 (struct g_journal_softc*) ; 
 struct g_provider* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct g_journal_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct g_journal_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct g_journal_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct g_journal_softc *sc)
{
	struct g_provider *pp;

	if (FUNC2(sc)) {
		FUNC0(3, "No need for %s switch.", sc->sc_name);
		pp = FUNC3(&sc->sc_geom->provider);
		if (!(sc->sc_flags & GJF_DEVICE_CLEAN) && pp->acw == 0) {
			sc->sc_flags |= GJF_DEVICE_CLEAN;
			FUNC0(1, "Marking %s as clean.", sc->sc_name);
			FUNC6(sc);
		}
	} else {
		FUNC0(3, "Switching journal %s.", sc->sc_geom->name);

		pp = sc->sc_jprovider;

		sc->sc_journal_previous_id = sc->sc_journal_id;

		sc->sc_journal_id = sc->sc_journal_next_id;
		sc->sc_journal_next_id = FUNC4();

		FUNC1(sc->sc_journal_offset, sc);

		FUNC7(sc);

		sc->sc_inactive.jj_offset = sc->sc_active.jj_offset;
		sc->sc_inactive.jj_queue = sc->sc_active.jj_queue;

		sc->sc_active.jj_offset =
		    sc->sc_journal_offset - pp->sectorsize;
		sc->sc_active.jj_queue = NULL;

		/*
		 * Switch is done, start copying data from the (now) inactive
		 * journal to the data provider.
		 */
		FUNC5(sc);
	}
	FUNC8(&sc->sc_mtx);
	sc->sc_flags &= ~GJF_DEVICE_SWITCH;
	FUNC9(&sc->sc_mtx);
}