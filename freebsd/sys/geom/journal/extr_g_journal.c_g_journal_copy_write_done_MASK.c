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
struct g_journal_softc {scalar_t__ sc_copy_in_progress; scalar_t__ sc_journal_copying; int /*<<< orphan*/  sc_copy_queue; } ;
struct bio {scalar_t__ bio_cflags; scalar_t__ bio_error; int /*<<< orphan*/  bio_length; int /*<<< orphan*/  bio_data; TYPE_2__* bio_from; } ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_journal_softc* softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bio*) ; 
 scalar_t__ GJ_BIO_COPY ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct bio*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bio *bp)
{
	struct g_journal_softc *sc;

	FUNC3(bp->bio_cflags == GJ_BIO_COPY,
	    ("Invalid bio (%d != %d).", bp->bio_cflags, GJ_BIO_COPY));

	sc = bp->bio_from->geom->softc;
	sc->sc_copy_in_progress--;

	if (bp->bio_error != 0) {
		FUNC2(0, bp, "[copy] Error while writing data (error=%d)",
		    bp->bio_error);
	}
	FUNC0(sc->sc_copy_queue, bp);
	FUNC5(bp->bio_data, bp->bio_length);
	FUNC2(4, bp, "DONE");
	FUNC4(bp);

	if (sc->sc_copy_in_progress == 0) {
		/*
		 * This was the last write request for this journal.
		 */
		FUNC1(1, "Data has been copied.");
		sc->sc_journal_copying = 0;
	}
}