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
struct ncr53c9x_softc {scalar_t__ sc_state; struct ncr53c9x_ecb* sc_nexus; } ;
struct ncr53c9x_ecb {int /*<<< orphan*/  timeout; int /*<<< orphan*/  ch; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECB_ABORT ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  NCR_ABORT_TIMEOUT ; 
 scalar_t__ NCR_CONNECTED ; 
 scalar_t__ NCR_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct ncr53c9x_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEND_ABORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ncr53c9x_ecb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ncr53c9x_callout ; 
 int /*<<< orphan*/  FUNC3 (struct ncr53c9x_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ncr53c9x_softc *sc, struct ncr53c9x_ecb *ecb)
{

	FUNC0(sc, MA_OWNED);

	/* 2 secs for the abort */
	ecb->timeout = NCR_ABORT_TIMEOUT;
	ecb->flags |= ECB_ABORT;

	if (ecb == sc->sc_nexus) {
		/*
		 * If we're still selecting, the message will be scheduled
		 * after selection is complete.
		 */
		if (sc->sc_state == NCR_CONNECTED)
			FUNC4(SEND_ABORT);

		/*
		 * Reschedule callout.
		 */
		FUNC1(&ecb->ch, FUNC2(ecb->timeout),
		    ncr53c9x_callout, ecb);
	} else {
		/*
		 * Just leave the command where it is.
		 * XXX - what choice do we have but to reset the SCSI
		 *	 eventually?
		 */
		if (sc->sc_state == NCR_IDLE)
			FUNC3(sc);
	}
}