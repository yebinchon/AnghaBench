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
struct TYPE_2__ {struct bio* jj_queue; } ;
struct g_journal_softc {scalar_t__ sc_copy_in_progress; int /*<<< orphan*/  sc_dconsumer; int /*<<< orphan*/  sc_copy_queue; int /*<<< orphan*/  sc_mtx; TYPE_1__ sc_inactive; } ;
struct bio {scalar_t__ bio_joffset; int /*<<< orphan*/ * bio_data; int /*<<< orphan*/  bio_cflags; } ;

/* Variables and functions */
 struct bio* FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,struct bio*,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,struct bio*) ; 
 int /*<<< orphan*/  GJ_BIO_COPY ; 
 int /*<<< orphan*/  FUNC4 (int,struct bio*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ g_journal_do_optimize ; 
 scalar_t__ FUNC6 (struct bio*) ; 
 scalar_t__ g_journal_parallel_copies ; 
 int /*<<< orphan*/  FUNC7 (struct g_journal_softc*,struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct g_journal_softc *sc)
{
	struct bio *bioq, *bp, *lbp;

	bioq = lbp = NULL;
	FUNC8(&sc->sc_mtx);
	for (; sc->sc_copy_in_progress < g_journal_parallel_copies;) {
		bp = FUNC0(sc->sc_inactive.jj_queue);
		if (bp == NULL)
			break;
		FUNC3(sc->sc_inactive.jj_queue, bp);
		sc->sc_copy_in_progress++;
		FUNC1(bioq, bp, lbp);
		lbp = bp;
	}
	FUNC9(&sc->sc_mtx);
	if (g_journal_do_optimize)
		sc->sc_copy_in_progress += FUNC6(bioq);
	while ((bp = FUNC0(bioq)) != NULL) {
		FUNC3(bioq, bp);
		FUNC2(sc->sc_copy_queue, bp);
		bp->bio_cflags = GJ_BIO_COPY;
		if (bp->bio_data == NULL)
			FUNC7(sc, bp);
		else {
			bp->bio_joffset = 0;
			FUNC4(4, bp, "SEND");
			FUNC5(bp, sc->sc_dconsumer);
		}
	}
}