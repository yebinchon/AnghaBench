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
struct TYPE_6__ {size_t target_id; int /*<<< orphan*/  path; int /*<<< orphan*/  status; } ;
union ccb {TYPE_3__ ccb_h; } ;
struct TYPE_5__ {scalar_t__ offset; } ;
struct TYPE_4__ {scalar_t__ offset; } ;
struct ncr53c9x_tinfo {TYPE_2__ goal; TYPE_1__ curr; } ;
struct ncr53c9x_softc {int sc_phase; struct ncr53c9x_ecb* sc_nexus; int /*<<< orphan*/  sc_msgout; int /*<<< orphan*/  sc_msgpriq; scalar_t__ sc_dleft; int /*<<< orphan*/  sc_prevphase; int /*<<< orphan*/  sc_state; int /*<<< orphan*/  sc_dev; struct ncr53c9x_tinfo* sc_tinfo; } ;
struct ncr53c9x_ecb {int flags; char* trace; int /*<<< orphan*/  stat; int /*<<< orphan*/  dleft; struct ncr53c9x_softc* sc; union ccb* ccb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_CMD_TIMEOUT ; 
 int CDI ; 
 int ECB_ABORT ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int MSGI ; 
 scalar_t__ FUNC0 (struct ncr53c9x_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ncr53c9x_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ncr53c9x_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NCR_STAT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct ncr53c9x_ecb*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ncr53c9x_ecb*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ncr53c9x_softc*,struct ncr53c9x_ecb*) ; 
 int /*<<< orphan*/  FUNC5 (struct ncr53c9x_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct ncr53c9x_ecb *ecb = arg;
	union ccb *ccb = ecb->ccb;
	struct ncr53c9x_softc *sc = ecb->sc;
	struct ncr53c9x_tinfo *ti;

	FUNC1(sc, MA_OWNED);

	ti = &sc->sc_tinfo[ccb->ccb_h.target_id];
	FUNC7(ccb->ccb_h.path);
	FUNC3(sc->sc_dev, "timed out [ecb %p (flags 0x%x, dleft %x, "
	    "stat %x)], <state %d, nexus %p, phase(l %x, c %x, p %x), "
	    "resid %lx, msg(q %x,o %x) %s>",
	    ecb, ecb->flags, ecb->dleft, ecb->stat,
	    sc->sc_state, sc->sc_nexus,
	    FUNC2(sc, NCR_STAT),
	    sc->sc_phase, sc->sc_prevphase,
	    (long)sc->sc_dleft, sc->sc_msgpriq, sc->sc_msgout,
	    FUNC0(sc) ? "DMA active" : "");
#if defined(NCR53C9X_DEBUG) && NCR53C9X_DEBUG > 1
	printf("TRACE: %s.", ecb->trace);
#endif

	if (ecb->flags & ECB_ABORT) {
		/* Abort timed out. */
		FUNC6(" AGAIN\n");
		FUNC5(sc, 1);
	} else {
		/* Abort the operation that has timed out. */
		FUNC6("\n");
		ccb->ccb_h.status = CAM_CMD_TIMEOUT;
		FUNC4(sc, ecb);

		/* Disable sync mode if stuck in a data phase. */
		if (ecb == sc->sc_nexus && ti->curr.offset != 0 &&
		    (sc->sc_phase & (MSGI | CDI)) == 0) {
			/* XXX ASYNC CALLBACK! */
			ti->goal.offset = 0;
			FUNC7(ccb->ccb_h.path);
			FUNC6("sync negotiation disabled\n");
		}
	}
}