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
struct g_journal_softc {int /*<<< orphan*/  sc_jconsumer; } ;
struct bio {int /*<<< orphan*/  bio_done; int /*<<< orphan*/  bio_cmd; int /*<<< orphan*/  bio_length; int /*<<< orphan*/  bio_data; int /*<<< orphan*/  bio_joffset; int /*<<< orphan*/  bio_offset; struct bio* bio_parent; int /*<<< orphan*/  bio_cflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_READ ; 
 int /*<<< orphan*/  FUNC0 (int,struct bio*,char*) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct bio* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_journal_cache_misses ; 
 int /*<<< orphan*/  g_journal_std_done ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct g_journal_softc *sc, struct bio *bp)
{
	struct bio *cbp;

	/*
	 * We were short in memory, so data was freed.
	 * In that case we need to read it back from journal.
	 */
	cbp = FUNC1();
	cbp->bio_cflags = bp->bio_cflags;
	cbp->bio_parent = bp;
	cbp->bio_offset = bp->bio_joffset;
	cbp->bio_length = bp->bio_length;
	cbp->bio_data = FUNC3(bp->bio_length, M_WAITOK);
	cbp->bio_cmd = BIO_READ;
	cbp->bio_done = g_journal_std_done;
	FUNC0(4, cbp, "READ FIRST");
	FUNC2(cbp, sc->sc_jconsumer);
	g_journal_cache_misses++;
}