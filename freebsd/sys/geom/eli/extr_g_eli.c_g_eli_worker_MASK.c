#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct g_eli_worker {int w_number; scalar_t__ w_active; struct g_eli_softc* w_softc; } ;
struct g_eli_softc {int sc_flags; scalar_t__ sc_inflight; int /*<<< orphan*/  sc_queue_mtx; int /*<<< orphan*/  sc_workers; scalar_t__ sc_cpubind; } ;
struct bio {scalar_t__ bio_pflags; scalar_t__ bio_cmd; } ;
struct TYPE_8__ {TYPE_1__* td_proc; } ;
struct TYPE_7__ {scalar_t__ p_comm; } ;

/* Variables and functions */
 scalar_t__ BIO_READ ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 int G_ELI_FLAG_AUTH ; 
 int G_ELI_FLAG_DESTROY ; 
 int G_ELI_FLAG_SUSPEND ; 
 scalar_t__ G_ELI_NEW_BIO ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_eli_worker*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  M_ELI ; 
 int /*<<< orphan*/  PDROP ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  PUSER ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int) ; 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  FUNC5 (struct g_eli_worker*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct g_eli_softc*,struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct g_eli_worker*,struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (struct g_eli_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct g_eli_softc*,struct bio*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct g_eli_worker*,struct bio*) ; 
 int /*<<< orphan*/  FUNC11 (struct g_eli_worker*) ; 
 int FUNC12 (struct g_eli_worker*) ; 
 struct bio* FUNC13 (struct g_eli_softc*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  FUNC15 (struct g_eli_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ smp_started ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (struct g_eli_worker*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  w_next ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC24(void *arg)
{
	struct g_eli_softc *sc;
	struct g_eli_worker *wr;
	struct bio *bp;
	int error;

	wr = arg;
	sc = wr->w_softc;
#ifdef EARLY_AP_STARTUP
	MPASS(!sc->sc_cpubind || smp_started);
#elif defined(SMP)
	/* Before sched_bind() to a CPU, wait for all CPUs to go on-line. */
	if (sc->sc_cpubind) {
		while (!smp_started)
			tsleep(wr, 0, "geli:smp", hz / 4);
	}
#endif
	FUNC20(curthread);
	FUNC19(curthread, PUSER);
	if (sc->sc_cpubind)
		FUNC18(curthread, wr->w_number % mp_ncpus);
	FUNC21(curthread);

	FUNC0(1, "Thread %s started.", curthread->td_proc->p_comm);

	for (;;) {
		FUNC16(&sc->sc_queue_mtx);
again:
		bp = FUNC13(sc);
		if (bp == NULL) {
			if (sc->sc_flags & G_ELI_FLAG_DESTROY) {
				FUNC8(sc);
				FUNC2(wr, w_next);
				FUNC11(wr);
				FUNC5(wr, M_ELI);
				FUNC0(1, "Thread %s exiting.",
				    curthread->td_proc->p_comm);
				FUNC23(&sc->sc_workers);
				FUNC17(&sc->sc_queue_mtx);
				FUNC14(0);
			}
			while (sc->sc_flags & G_ELI_FLAG_SUSPEND) {
				if (sc->sc_inflight > 0) {
					FUNC0(0, "inflight=%d",
					    sc->sc_inflight);
					/*
					 * We still have inflight BIOs, so
					 * sleep and retry.
					 */
					FUNC15(sc, &sc->sc_queue_mtx, PRIBIO,
					    "geli:inf", hz / 5);
					goto again;
				}
				/*
				 * Suspend requested, mark the worker as
				 * suspended and go to sleep.
				 */
				if (wr->w_active) {
					FUNC11(wr);
					wr->w_active = FALSE;
				}
				FUNC23(&sc->sc_workers);
				FUNC15(sc, &sc->sc_queue_mtx, PRIBIO,
				    "geli:suspend", 0);
				if (!wr->w_active &&
				    !(sc->sc_flags & G_ELI_FLAG_SUSPEND)) {
					error = FUNC12(wr);
					FUNC1(error == 0,
					    ("g_eli_newsession() failed on resume (error=%d)",
					    error));
					wr->w_active = TRUE;
				}
				goto again;
			}
			FUNC15(sc, &sc->sc_queue_mtx, PDROP, "geli:w", 0);
			continue;
		}
		if (bp->bio_pflags == G_ELI_NEW_BIO)
			FUNC4(&sc->sc_inflight, 1);
		FUNC17(&sc->sc_queue_mtx);
		if (bp->bio_pflags == G_ELI_NEW_BIO) {
			bp->bio_pflags = 0;
			if (sc->sc_flags & G_ELI_FLAG_AUTH) {
				if (bp->bio_cmd == BIO_READ)
					FUNC6(sc, bp);
				else
					FUNC7(wr, bp);
			} else {
				if (bp->bio_cmd == BIO_READ)
					FUNC9(sc, bp, 1);
				else
					FUNC10(wr, bp);
			}
		} else {
			if (sc->sc_flags & G_ELI_FLAG_AUTH)
				FUNC7(wr, bp);
			else
				FUNC10(wr, bp);
		}
	}
}