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
struct g_raid_softc {int sc_stopping; int /*<<< orphan*/  sc_lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,struct g_raid_softc*,char*,...) ; 
#define  G_RAID_DESTROY_DELAYED 130 
#define  G_RAID_DESTROY_HARD 129 
#define  G_RAID_DESTROY_SOFT 128 
 int /*<<< orphan*/  G_RAID_NODE_E_WAKE ; 
 int PDROP ; 
 int PRIBIO ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct g_raid_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct g_raid_softc*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int*,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct g_raid_softc *sc, int how)
{
	int error, opens;

	FUNC3();
	if (sc == NULL)
		return (ENXIO);
	FUNC4(&sc->sc_lock, SX_XLOCKED);

	/* Count open volumes. */
	opens = FUNC2(sc);

	/* React on some opened volumes. */
	if (opens > 0) {
		switch (how) {
		case G_RAID_DESTROY_SOFT:
			FUNC0(1, sc,
			    "%d volumes are still open.",
			    opens);
			FUNC6(&sc->sc_lock);
			return (EBUSY);
		case G_RAID_DESTROY_DELAYED:
			FUNC0(1, sc,
			    "Array will be destroyed on last close.");
			sc->sc_stopping = G_RAID_DESTROY_DELAYED;
			FUNC6(&sc->sc_lock);
			return (EBUSY);
		case G_RAID_DESTROY_HARD:
			FUNC0(1, sc,
			    "%d volumes are still open.",
			    opens);
		}
	}

	/* Mark node for destruction. */
	sc->sc_stopping = G_RAID_DESTROY_HARD;
	/* Wake up worker to let it selfdestruct. */
	FUNC1(sc, G_RAID_NODE_E_WAKE, 0);
	/* Sleep until node destroyed. */
	error = FUNC5(&sc->sc_stopping, &sc->sc_lock,
	    PRIBIO | PDROP, "r:destroy", hz * 3);
	return (error == EWOULDBLOCK ? EBUSY : 0);
}