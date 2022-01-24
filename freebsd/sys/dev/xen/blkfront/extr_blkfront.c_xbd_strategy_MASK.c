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
struct xbd_softc {int /*<<< orphan*/  xbd_io_lock; } ;
struct bio {int /*<<< orphan*/  bio_bcount; int /*<<< orphan*/  bio_resid; int /*<<< orphan*/  bio_flags; int /*<<< orphan*/  bio_error; TYPE_1__* bio_disk; } ;
struct TYPE_2__ {struct xbd_softc* d_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xbd_softc*,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct xbd_softc*) ; 

__attribute__((used)) static void
FUNC5(struct bio *bp)
{
	struct xbd_softc *sc = bp->bio_disk->d_drv1;

	/* bogus disk? */
	if (sc == NULL) {
		bp->bio_error = EINVAL;
		bp->bio_flags |= BIO_ERROR;
		bp->bio_resid = bp->bio_bcount;
		FUNC0(bp);
		return;
	}

	/*
	 * Place it in the queue of disk activities for this disk
	 */
	FUNC1(&sc->xbd_io_lock);

	FUNC3(sc, bp);
	FUNC4(sc);

	FUNC2(&sc->xbd_io_lock);
	return;
}