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
struct g_geom {int /*<<< orphan*/  consumer; struct g_cache_softc* softc; } ;
struct g_cache_softc {scalar_t__ sc_wrotebytes; int /*<<< orphan*/  sc_writes; scalar_t__ sc_cachereadbytes; int /*<<< orphan*/  sc_cachereads; int /*<<< orphan*/  sc_mtx; scalar_t__ sc_tail; scalar_t__ sc_readbytes; int /*<<< orphan*/  sc_reads; } ;
struct g_cache_desc {int /*<<< orphan*/ * d_biolist; } ;
struct bio {int bio_cmd; int /*<<< orphan*/  bio_done; scalar_t__ bio_length; scalar_t__ bio_offset; TYPE_1__* bio_to; } ;
struct TYPE_2__ {struct g_geom* geom; } ;

/* Variables and functions */
#define  BIO_READ 129 
#define  BIO_WRITE 128 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct g_cache_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct g_cache_softc*,struct bio*,struct g_cache_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_cache_enable ; 
 int /*<<< orphan*/  FUNC4 (struct g_cache_softc*,struct bio*) ; 
 struct g_cache_desc* FUNC5 (struct g_cache_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct g_cache_softc*,struct bio*) ; 
 struct bio* FUNC7 (struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_std_done ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct bio *bp)
{
	struct g_cache_softc *sc;
	struct g_geom *gp;
	struct g_cache_desc *dp;
	struct bio *cbp;

	gp = bp->bio_to->geom;
	sc = gp->softc;
	FUNC0(bp, "Request received.");
	switch (bp->bio_cmd) {
	case BIO_READ:
		sc->sc_reads++;
		sc->sc_readbytes += bp->bio_length;
		if (!g_cache_enable)
			break;
		if (bp->bio_offset + bp->bio_length > sc->sc_tail)
			break;
		if (FUNC2(bp->bio_offset, sc) ==
		    FUNC2(bp->bio_offset + bp->bio_length - 1, sc)) {
			sc->sc_cachereads++;
			sc->sc_cachereadbytes += bp->bio_length;
			if (FUNC6(sc, bp) == 0)
				return;
			sc->sc_cachereads--;
			sc->sc_cachereadbytes -= bp->bio_length;
			break;
		} else if (FUNC2(bp->bio_offset, sc) + 1 ==
		    FUNC2(bp->bio_offset + bp->bio_length - 1, sc)) {
			FUNC10(&sc->sc_mtx);
			dp = FUNC5(sc, FUNC2(bp->bio_offset, sc));
			if (dp == NULL || dp->d_biolist != NULL) {
				FUNC11(&sc->sc_mtx);
				break;
			}
			sc->sc_cachereads++;
			sc->sc_cachereadbytes += bp->bio_length;
			FUNC3(sc, bp, dp, 0);
			FUNC11(&sc->sc_mtx);
			if (FUNC6(sc, bp) == 0)
				return;
			sc->sc_cachereads--;
			sc->sc_cachereadbytes -= bp->bio_length;
			break;
		}
		break;
	case BIO_WRITE:
		sc->sc_writes++;
		sc->sc_wrotebytes += bp->bio_length;
		FUNC4(sc, bp);
		break;
	}
	cbp = FUNC7(bp);
	if (cbp == NULL) {
		FUNC8(bp, ENOMEM);
		return;
	}
	cbp->bio_done = g_std_done;
	FUNC0(cbp, "Sending request.");
	FUNC9(cbp, FUNC1(&gp->consumer));
}