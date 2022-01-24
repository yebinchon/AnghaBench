#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct g_provider {int acr; int acw; int ace; TYPE_1__* geom; int /*<<< orphan*/  name; } ;
struct g_journal_softc {int sc_flags; int /*<<< orphan*/  sc_name; } ;
struct TYPE_2__ {struct g_journal_softc* softc; } ;

/* Variables and functions */
 int ENXIO ; 
 int GJF_DEVICE_CLEAN ; 
 int GJF_DEVICE_DESTROY ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct g_journal_softc*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5(struct g_provider *pp, int acr, int acw, int ace)
{
	struct g_journal_softc *sc;
	int dcr, dcw, dce;

	FUNC2();
	FUNC0(2, "Access request for %s: r%dw%de%d.", pp->name,
	    acr, acw, ace);

	dcr = pp->acr + acr;
	dcw = pp->acw + acw;
	dce = pp->ace + ace;

	sc = pp->geom->softc;
	if (sc == NULL || (sc->sc_flags & GJF_DEVICE_DESTROY)) {
		if (acr <= 0 && acw <= 0 && ace <= 0)
			return (0);
		else
			return (ENXIO);
	}
	if (pp->acw == 0 && dcw > 0) {
		FUNC0(1, "Marking %s as dirty.", sc->sc_name);
		sc->sc_flags &= ~GJF_DEVICE_CLEAN;
		FUNC4();
		FUNC1(sc);
		FUNC3();
	} /* else if (pp->acw == 0 && dcw > 0 && JEMPTY(sc)) {
		GJ_DEBUG(1, "Marking %s as clean.", sc->sc_name);
		sc->sc_flags |= GJF_DEVICE_CLEAN;
		g_topology_unlock();
		g_journal_metadata_update(sc);
		g_topology_lock();
	} */
	return (0);
}