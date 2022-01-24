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
struct g_cache_softc {scalar_t__ sc_bsize; int /*<<< orphan*/  sc_nused; int /*<<< orphan*/  sc_usedlist; int /*<<< orphan*/  sc_mtx; } ;
struct g_cache_desc {scalar_t__ d_bno; scalar_t__ d_data; int d_flags; int /*<<< orphan*/  d_atime; } ;
struct bio {scalar_t__ bio_offset; scalar_t__ bio_length; int bio_error; scalar_t__ bio_data; scalar_t__ bio_completed; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,struct g_cache_softc*) ; 
 int D_FLAG_USED ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,struct g_cache_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct g_cache_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct g_cache_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  d_used ; 
 int /*<<< orphan*/  FUNC8 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  time_uptime ; 

__attribute__((used)) static void
FUNC10(struct g_cache_softc *sc, struct bio *bp,
    struct g_cache_desc *dp, int error)
{
	off_t off1, off, len;

	FUNC9(&sc->sc_mtx, MA_OWNED);
	FUNC1(FUNC4(bp->bio_offset, sc) <= dp->d_bno, ("wrong entry"));
	FUNC1(FUNC4(bp->bio_offset + bp->bio_length - 1, sc) >=
	    dp->d_bno, ("wrong entry"));

	off1 = FUNC0(dp->d_bno, sc);
	off = FUNC2(bp->bio_offset, off1);
	len = FUNC3(bp->bio_offset + bp->bio_length, off1 + sc->sc_bsize) - off;

	if (bp->bio_error == 0)
		bp->bio_error = error;
	if (bp->bio_error == 0) {
		FUNC7(dp->d_data + (off - off1),
		    bp->bio_data + (off - bp->bio_offset), len);
	}
	bp->bio_completed += len;
	FUNC1(bp->bio_completed <= bp->bio_length, ("extra data"));
	if (bp->bio_completed == bp->bio_length) {
		if (bp->bio_error != 0)
			bp->bio_completed = 0;
		FUNC8(bp, bp->bio_error);
	}

	if (dp->d_flags & D_FLAG_USED) {
		FUNC6(&sc->sc_usedlist, dp, d_used);
		FUNC5(&sc->sc_usedlist, dp, d_used);
	} else if (FUNC4(off + len, sc) > dp->d_bno) {
		FUNC5(&sc->sc_usedlist, dp, d_used);
		sc->sc_nused++;
		dp->d_flags |= D_FLAG_USED;
	}
	dp->d_atime = time_uptime;
}