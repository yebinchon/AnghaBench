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
struct vtblk_softc {int dummy; } ;
struct bio {int bio_error; int /*<<< orphan*/  bio_flags; int /*<<< orphan*/  bio_bcount; int /*<<< orphan*/  bio_resid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 

__attribute__((used)) static void
FUNC2(struct vtblk_softc *sc, struct bio *bp, int error)
{

	/* Because of GEOM direct dispatch, we cannot hold any locks. */
	if (sc != NULL)
		FUNC0(sc);

	if (error) {
		bp->bio_resid = bp->bio_bcount;
		bp->bio_error = error;
		bp->bio_flags |= BIO_ERROR;
	}

	FUNC1(bp);
}