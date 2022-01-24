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
struct g_raid_volume {scalar_t__ v_provider_open; scalar_t__ v_stopping; scalar_t__ v_read_only; } ;
struct g_raid_softc {scalar_t__ sc_stopping; int /*<<< orphan*/  sc_lock; } ;
struct g_provider {int acw; int /*<<< orphan*/  name; struct g_raid_volume* private; TYPE_1__* geom; } ;
struct TYPE_2__ {struct g_raid_softc* softc; } ;

/* Variables and functions */
 int ENXIO ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (int,struct g_raid_softc*,char*,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ G_RAID_DESTROY_DELAYED ; 
 scalar_t__ G_RAID_DESTROY_HARD ; 
 int /*<<< orphan*/  G_RAID_NODE_E_WAKE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_raid_volume*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct g_raid_volume*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_raid_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct g_raid_softc*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct g_provider *pp, int acr, int acw, int ace)
{
	struct g_raid_volume *vol;
	struct g_raid_softc *sc;
	int dcw, opens, error = 0;

	FUNC6();
	sc = pp->geom->softc;
	vol = pp->private;
	FUNC1(sc != NULL, ("NULL softc (provider=%s).", pp->name));
	FUNC1(vol != NULL, ("NULL volume (provider=%s).", pp->name));

	FUNC0(2, sc, "Access request for %s: r%dw%de%d.", pp->name,
	    acr, acw, ace);
	dcw = pp->acw + acw;

	FUNC8();
	FUNC9(&sc->sc_lock);
	/* Deny new opens while dying. */
	if (sc->sc_stopping != 0 && (acr > 0 || acw > 0 || ace > 0)) {
		error = ENXIO;
		goto out;
	}
	/* Deny write opens for read-only volumes. */
	if (vol->v_read_only && acw > 0) {
		error = EROFS;
		goto out;
	}
	if (dcw == 0)
		FUNC2(vol, dcw);
	vol->v_provider_open += acr + acw + ace;
	/* Handle delayed node destruction. */
	if (sc->sc_stopping == G_RAID_DESTROY_DELAYED &&
	    vol->v_provider_open == 0) {
		/* Count open volumes. */
		opens = FUNC5(sc);
		if (opens == 0) {
			sc->sc_stopping = G_RAID_DESTROY_HARD;
			/* Wake up worker to make it selfdestruct. */
			FUNC4(sc, G_RAID_NODE_E_WAKE, 0);
		}
	}
	/* Handle open volume destruction. */
	if (vol->v_stopping && vol->v_provider_open == 0)
		FUNC3(vol);
out:
	FUNC10(&sc->sc_lock);
	FUNC7();
	return (error);
}