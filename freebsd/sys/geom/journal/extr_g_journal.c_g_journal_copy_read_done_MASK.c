#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct g_journal_softc {struct g_consumer* sc_dconsumer; int /*<<< orphan*/  sc_copy_in_progress; } ;
struct g_consumer {int dummy; } ;
struct bio {scalar_t__ bio_cflags; scalar_t__ bio_error; int /*<<< orphan*/  bio_data; int /*<<< orphan*/  bio_length; TYPE_3__* bio_to; struct bio* bio_parent; TYPE_2__* bio_from; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {TYPE_1__* geom; } ;
struct TYPE_4__ {struct g_journal_softc* softc; } ;

/* Variables and functions */
 scalar_t__ GJ_BIO_COPY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,struct bio*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct bio *bp)
{
	struct g_journal_softc *sc;
	struct g_consumer *cp;
	struct bio *pbp;

	FUNC2(bp->bio_cflags == GJ_BIO_COPY,
	    ("Invalid bio (%d != %d).", bp->bio_cflags, GJ_BIO_COPY));

	sc = bp->bio_from->geom->softc;
	pbp = bp->bio_parent;

	if (bp->bio_error != 0) {
		FUNC0(0, "Error while reading data from %s (error=%d).",
		    bp->bio_to->name, bp->bio_error);
		/*
		 * We will not be able to deliver WRITE request as well.
		 */
		FUNC5(bp->bio_data, bp->bio_length);
		FUNC3(pbp);
		FUNC3(bp);
		sc->sc_copy_in_progress--;
		return (1);
	}
	pbp->bio_data = bp->bio_data;
	cp = sc->sc_dconsumer;
	FUNC4(pbp, cp);
	FUNC1(4, bp, "READ DONE");
	FUNC3(bp);
	return (0);
}