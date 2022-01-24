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
struct g_cache_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_invalid; int /*<<< orphan*/  sc_nused; int /*<<< orphan*/  sc_usedlist; } ;
struct g_cache_desc {int d_flags; int /*<<< orphan*/ * d_biolist; } ;
struct bio {scalar_t__ bio_length; scalar_t__ bio_offset; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int D_FLAG_INVALID ; 
 int D_FLAG_USED ; 
 int /*<<< orphan*/  FUNC0 (struct g_cache_desc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,struct g_cache_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct g_cache_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  d_next ; 
 int /*<<< orphan*/  d_used ; 
 int /*<<< orphan*/  FUNC3 (struct g_cache_softc*,struct g_cache_desc*) ; 
 struct g_cache_desc* FUNC4 (struct g_cache_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct g_cache_softc *sc, struct bio *bp)
{
	struct g_cache_desc *dp;
	off_t bno, lim;

	FUNC5(&sc->sc_mtx);
	bno = FUNC1(bp->bio_offset, sc);
	lim = FUNC1(bp->bio_offset + bp->bio_length - 1, sc);
	do {
		if ((dp = FUNC4(sc, bno)) != NULL) {
			FUNC0(dp, d_next);
			if (dp->d_flags & D_FLAG_USED) {
				FUNC2(&sc->sc_usedlist, dp, d_used);
				sc->sc_nused--;
			}
			if (dp->d_biolist == NULL)
				FUNC3(sc, dp);
			else {
				dp->d_flags = D_FLAG_INVALID;
				sc->sc_invalid++;
			}
		}
		bno++;
	} while (bno <= lim);
	FUNC6(&sc->sc_mtx);
}