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
struct vtblk_softc {int vtblk_flags; int /*<<< orphan*/  vtblk_bioq; } ;
struct bio {scalar_t__ bio_cmd; TYPE_1__* bio_disk; } ;
struct TYPE_2__ {struct vtblk_softc* d_drv1; } ;

/* Variables and functions */
 scalar_t__ BIO_FLUSH ; 
 scalar_t__ BIO_WRITE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  EROFS ; 
 int VTBLK_FLAG_DETACH ; 
 int VTBLK_FLAG_READONLY ; 
 int /*<<< orphan*/  FUNC0 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtblk_softc*,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vtblk_softc*) ; 

__attribute__((used)) static void
FUNC5(struct bio *bp)
{
	struct vtblk_softc *sc;

	if ((sc = bp->bio_disk->d_drv1) == NULL) {
		FUNC3(NULL, bp, EINVAL);
		return;
	}

	/*
	 * Fail any write if RO. Unfortunately, there does not seem to
	 * be a better way to report our readonly'ness to GEOM above.
	 */
	if (sc->vtblk_flags & VTBLK_FLAG_READONLY &&
	    (bp->bio_cmd == BIO_WRITE || bp->bio_cmd == BIO_FLUSH)) {
		FUNC3(sc, bp, EROFS);
		return;
	}

	FUNC0(sc);

	if (sc->vtblk_flags & VTBLK_FLAG_DETACH) {
		FUNC1(sc);
		FUNC3(sc, bp, ENXIO);
		return;
	}

	FUNC2(&sc->vtblk_bioq, bp);
	FUNC4(sc);

	FUNC1(sc);
}