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
struct g_multipath_softc {uintptr_t sc_ndisks; int /*<<< orphan*/  sc_mtx; } ;
struct g_geom {struct g_multipath_softc* softc; } ;
struct g_consumer {int /*<<< orphan*/  private; } ;
struct bio {int /*<<< orphan*/  bio_done; void* bio_driver1; TYPE_1__* bio_to; } ;
struct TYPE_2__ {struct g_geom* geom; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct bio* FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,struct g_consumer*) ; 
 struct g_consumer* FUNC5 (struct g_geom*,struct bio*) ; 
 int /*<<< orphan*/  g_multipath_done ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct bio *bp)
{
	struct g_multipath_softc *sc;
	struct g_geom *gp;
	struct g_consumer *cp;
	struct bio *cbp;
	uintptr_t *cnt;

	gp = bp->bio_to->geom;
	sc = gp->softc;
	FUNC0(sc != NULL, ("NULL sc"));
	cbp = FUNC1(bp);
	if (cbp == NULL) {
		FUNC3(bp, ENOMEM);
		return;
	}
	FUNC6(&sc->sc_mtx);
	cp = FUNC5(gp, bp);
	if (cp == NULL) {
		FUNC7(&sc->sc_mtx);
		FUNC2(cbp);
		FUNC3(bp, ENXIO);
		return;
	}
	if ((uintptr_t)bp->bio_driver1 < sc->sc_ndisks)
		bp->bio_driver1 = (void *)(uintptr_t)sc->sc_ndisks;
	cnt = (uintptr_t *)&cp->private;
	(*cnt)++;
	FUNC7(&sc->sc_mtx);
	cbp->bio_done = g_multipath_done;
	FUNC4(cbp, cp);
}