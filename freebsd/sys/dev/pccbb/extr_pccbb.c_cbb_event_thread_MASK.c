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
typedef  int uint32_t ;
struct cbb_softc {int flags; int /*<<< orphan*/  mtx; int /*<<< orphan*/  dev; int /*<<< orphan*/  intrhand; int /*<<< orphan*/ * sc_root_token; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CBB_FORCE_CV_TEST ; 
 int CBB_KTHREAD_DONE ; 
 int CBB_KTHREAD_RUNNING ; 
 int /*<<< orphan*/  CBB_SOCKET_FORCE ; 
 int /*<<< orphan*/  CBB_SOCKET_MASK ; 
 int CBB_SOCKET_MASK_CD ; 
 int CBB_SOCKET_MASK_CSTS ; 
 int /*<<< orphan*/  CBB_SOCKET_STATE ; 
 int CBB_STATE_NOT_A_CARD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EWOULDBLOCK ; 
 int FUNC3 (struct cbb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cbb_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct cbb_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct cbb_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void
FUNC15(void *arg)
{
	struct cbb_softc *sc = arg;
	uint32_t status;
	int err;
	int not_a_card = 0;

	/*
	 * We need to act as a power sequencer on startup.  Delay 2s/channel
	 * to ensure the other channels have had a chance to come up.  We likely
	 * should add a lock that's shared on a per-slot basis so that only
	 * one power event can happen per slot at a time.
	 */
	FUNC13("cbbstart", hz * FUNC7(sc->dev) * 2);
	FUNC11(&sc->mtx);
	sc->flags |= CBB_KTHREAD_RUNNING;
	while ((sc->flags & CBB_KTHREAD_DONE) == 0) {
		FUNC12(&sc->mtx);
		status = FUNC3(sc, CBB_SOCKET_STATE);
		FUNC2(("Status is 0x%x\n", status));
		if (!FUNC0(status)) {
			not_a_card = 0;		/* We know card type */
			FUNC5(sc);
		} else if (status & CBB_STATE_NOT_A_CARD) {
			/*
			 * Up to 10 times, try to rescan the card when we see
			 * NOT_A_CARD.  10 is somehwat arbitrary.  When this
			 * pathology hits, there's a ~40% chance each try will
			 * fail.  10 tries takes about 5s and results in a
			 * 99.99% certainty of the results.
			 */
			if (not_a_card++ < 10) {
				FUNC1((sc->dev,
				    "Not a card bit set, rescanning\n"));
				FUNC6(sc, CBB_SOCKET_FORCE, CBB_FORCE_CV_TEST);
			} else {
				FUNC8(sc->dev,
				    "Can't determine card type\n");
			}
		} else {
			not_a_card = 0;		/* We know card type */
			FUNC4(sc);
		}

		/*
		 * First time through we need to tell mountroot that we're
		 * done.
		 */
		if (sc->sc_root_token) {
			FUNC14(sc->sc_root_token);
			sc->sc_root_token = NULL;
		}

		/*
		 * Wait until it has been 250ms since the last time we
		 * get an interrupt.  We handle the rest of the interrupt
		 * at the top of the loop.  Although we clear the bit in the
		 * ISR, we signal sc->cv from the detach path after we've
		 * set the CBB_KTHREAD_DONE bit, so we can't do a simple
		 * 250ms sleep here.
		 *
		 * In our ISR, we turn off the card changed interrupt.  Turn
		 * them back on here before we wait for them to happen.  We
		 * turn them on/off so that we can tolerate a large latency
		 * between the time we signal cbb_event_thread and it gets
		 * a chance to run.
		 */
		FUNC11(&sc->mtx);
		FUNC6(sc, CBB_SOCKET_MASK, CBB_SOCKET_MASK_CD | CBB_SOCKET_MASK_CSTS);
		FUNC10(&sc->intrhand, &sc->mtx, 0, "-", 0);
		err = 0;
		while (err != EWOULDBLOCK &&
		    (sc->flags & CBB_KTHREAD_DONE) == 0)
			err = FUNC10(&sc->intrhand, &sc->mtx, 0, "-", hz / 5);
	}
	FUNC1((sc->dev, "Thread terminating\n"));
	sc->flags &= ~CBB_KTHREAD_RUNNING;
	FUNC12(&sc->mtx);
	FUNC9(0);
}