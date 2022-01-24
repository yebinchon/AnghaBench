#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct g_cache_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_nused; int /*<<< orphan*/  sc_usedlist; int /*<<< orphan*/  sc_invalid; } ;
struct g_cache_desc {int d_flags; struct bio* d_biolist; } ;
struct bio {scalar_t__ bio_error; TYPE_2__* bio_from; } ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_cache_softc* softc; } ;

/* Variables and functions */
 int D_FLAG_INVALID ; 
 int D_FLAG_USED ; 
 struct g_cache_softc* FUNC0 (struct bio*) ; 
 struct g_cache_desc* FUNC1 (struct bio*) ; 
 struct g_cache_softc* FUNC2 (struct bio*) ; 
 struct bio* FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_cache_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct g_cache_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  d_next ; 
 int /*<<< orphan*/  d_used ; 
 int /*<<< orphan*/  FUNC7 (struct g_cache_softc*,struct bio*,struct g_cache_desc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct g_cache_softc*,struct g_cache_desc*) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct bio *bp)
{
	struct g_cache_softc *sc;
	struct g_cache_desc *dp;
	struct bio *bp2, *tmpbp;

	sc = bp->bio_from->geom->softc;
	FUNC4(FUNC0(bp) == sc, ("corrupt bio_caller in g_cache_done()"));
	dp = FUNC1(bp);
	FUNC10(&sc->sc_mtx);
	bp2 = dp->d_biolist;
	while (bp2 != NULL) {
		FUNC4(FUNC2(bp2) == sc, ("corrupt bio_driver in g_cache_done()"));
		tmpbp = FUNC3(bp2);
		FUNC7(sc, bp2, dp, bp->bio_error);
		bp2 = tmpbp;
	}
	dp->d_biolist = NULL;
	if (dp->d_flags & D_FLAG_INVALID) {
		sc->sc_invalid--;
		FUNC8(sc, dp);
	} else if (bp->bio_error) {
		FUNC5(dp, d_next);
		if (dp->d_flags & D_FLAG_USED) {
			FUNC6(&sc->sc_usedlist, dp, d_used);
			sc->sc_nused--;
		}
		FUNC8(sc, dp);
	}
	FUNC11(&sc->sc_mtx);
	FUNC9(bp);
}