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
struct g_journal_softc {int /*<<< orphan*/  sc_flush_in_progress; } ;
struct g_consumer {TYPE_1__* geom; } ;
struct bio {int bio_cflags; scalar_t__ bio_error; int /*<<< orphan*/  bio_length; int /*<<< orphan*/  bio_data; struct g_consumer* bio_from; } ;
struct TYPE_2__ {struct g_journal_softc* softc; } ;

/* Variables and functions */
 int GJ_BIO_JOURNAL ; 
 int GJ_BIO_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,struct bio*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bio *bp)
{
	struct g_journal_softc *sc;
	struct g_consumer *cp;

	FUNC1((bp->bio_cflags & GJ_BIO_MASK) == GJ_BIO_JOURNAL,
	    ("Invalid bio (%d != %d).", bp->bio_cflags, GJ_BIO_JOURNAL));

	cp = bp->bio_from;
	sc = cp->geom->softc;
	sc->sc_flush_in_progress--;

	if (bp->bio_error != 0) {
		FUNC0(0, bp, "[flush] Error while writing data (error=%d)",
		    bp->bio_error);
	}
	FUNC3(bp->bio_data, bp->bio_length);
	FUNC0(4, bp, "DONE");
	FUNC2(bp);
}