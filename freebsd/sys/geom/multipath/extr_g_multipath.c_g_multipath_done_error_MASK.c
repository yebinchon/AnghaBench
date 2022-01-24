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
struct g_provider {char* name; } ;
struct g_multipath_softc {char* sc_name; int /*<<< orphan*/  sc_mtx; } ;
struct g_geom {struct g_multipath_softc* softc; } ;
struct g_consumer {int index; int /*<<< orphan*/  private; struct g_provider* provider; } ;
struct bio {int bio_error; uintptr_t bio_children; int /*<<< orphan*/  bio_inbed; scalar_t__ bio_driver1; struct g_consumer* bio_from; TYPE_1__* bio_to; struct bio* bio_parent; } ;
struct TYPE_2__ {struct g_geom* geom; } ;

/* Variables and functions */
 int MP_FAIL ; 
 int MP_LOST ; 
 int MP_POSTED ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  g_mpd ; 
 int /*<<< orphan*/  FUNC1 (struct g_consumer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct g_consumer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*) ; 

__attribute__((used)) static void
FUNC8(struct bio *bp)
{
	struct bio *pbp;
	struct g_geom *gp;
	struct g_multipath_softc *sc;
	struct g_consumer *cp;
	struct g_provider *pp;
	uintptr_t *cnt;

	/*
	 * If we had a failure, we have to check first to see
	 * whether the consumer it failed on was the currently
	 * active consumer (i.e., this is the first in perhaps
	 * a number of failures). If so, we then switch consumers
	 * to the next available consumer.
	 */

	pbp = bp->bio_parent;
	gp = pbp->bio_to->geom;
	sc = gp->softc;
	cp = bp->bio_from;
	pp = cp->provider;
	cnt = (uintptr_t *)&cp->private;

	FUNC5(&sc->sc_mtx);
	if ((cp->index & MP_FAIL) == 0) {
		FUNC7("GEOM_MULTIPATH: Error %d, %s in %s marked FAIL\n",
		    bp->bio_error, pp->name, sc->sc_name);
		FUNC1(cp, MP_FAIL);
	}
	(*cnt)--;
	if (*cnt == 0 && (cp->index & (MP_LOST | MP_POSTED)) == MP_LOST) {
		cp->index |= MP_POSTED;
		FUNC6(&sc->sc_mtx);
		FUNC3(g_mpd, cp, M_WAITOK, NULL);
	} else
		FUNC6(&sc->sc_mtx);

	/*
	 * If we can fruitfully restart the I/O, do so.
	 */
	if (pbp->bio_children < (uintptr_t)pbp->bio_driver1) {
		pbp->bio_inbed++;
		FUNC0(bp);
		FUNC2(pbp);
	} else {
		FUNC4(bp);
	}
}