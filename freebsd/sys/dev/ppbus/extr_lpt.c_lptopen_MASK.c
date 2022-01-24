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
struct thread {int dummy; } ;
struct lpt_data {int sc_state; uintptr_t sc_flags; int sc_irq; scalar_t__ sc_primed; int sc_control; int sc_backoff; int /*<<< orphan*/  sc_timer; scalar_t__ sc_xfercnt; int /*<<< orphan*/  sc_dev; } ;
struct cdev {scalar_t__ si_drv2; struct lpt_data* si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int ENXIO ; 
 scalar_t__ EWOULDBLOCK ; 
 int LPC_AUTOL ; 
 int LPC_ENA ; 
 int LPC_NINIT ; 
 int LPC_SEL ; 
 int LPINITRDY ; 
 int LPPRI ; 
 int LPS_NBSY ; 
 int LPS_NERR ; 
 int LPS_OUT ; 
 int LPS_SEL ; 
 int LPTINIT ; 
 int LPTOUTINITIAL ; 
 int LP_AUTOLF ; 
 int LP_BYPASS ; 
 int LP_ENABLE_IRQ ; 
 int LP_NO_PRIME ; 
 int LP_PRIMEOPEN ; 
 int LP_USE_IRQ ; 
 int OPEN ; 
 int PCATCH ; 
 int PPB_INTR ; 
 int PPB_WAIT ; 
 int TOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct lpt_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  lptout ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static	int
FUNC12(struct cdev *dev, int flags, int fmt, struct thread *td)
{
	int trys, err;
	struct lpt_data *sc = dev->si_drv1;
	device_t lptdev;
	device_t ppbus;

	if (!sc)
		return (ENXIO);

	lptdev = sc->sc_dev;
	ppbus = FUNC3(lptdev);

	FUNC7(ppbus);
	if (sc->sc_state) {
		FUNC4(("%s: still open %x\n", FUNC2(lptdev),
		    sc->sc_state));
		FUNC10(ppbus);
		return(EBUSY);
	} else
		sc->sc_state |= LPTINIT;

	sc->sc_flags = (uintptr_t)dev->si_drv2;

	/* Check for open with BYPASS flag set. */
	if (sc->sc_flags & LP_BYPASS) {
		sc->sc_state = OPEN;
		FUNC10(ppbus);
		return(0);
	}

	/* request the ppbus only if we don't have it already */
	if ((err = FUNC6(lptdev, PPB_WAIT|PPB_INTR)) != 0) {
		/* give it a chance to try later */
		sc->sc_state = 0;
		FUNC10(ppbus);
		return (err);
	}

	FUNC4(("%s flags 0x%x\n", FUNC2(lptdev),
	    sc->sc_flags));

	/* set IRQ status according to ENABLE_IRQ flag
	 */
	if (sc->sc_irq & LP_ENABLE_IRQ)
		sc->sc_irq |= LP_USE_IRQ;
	else
		sc->sc_irq &= ~LP_USE_IRQ;

	/* init printer */
	if ((sc->sc_flags & LP_NO_PRIME) == 0) {
		if ((sc->sc_flags & LP_PRIMEOPEN) || sc->sc_primed == 0) {
			FUNC11(ppbus, 0);
			sc->sc_primed++;
			FUNC0(500);
		}
	}

	FUNC11(ppbus, LPC_SEL|LPC_NINIT);

	/* wait till ready (printer running diagnostics) */
	trys = 0;
	do {
		/* ran out of waiting for the printer */
		if (trys++ >= LPINITRDY*4) {
			FUNC4(("status %x\n", FUNC8(ppbus)));

			FUNC5(lptdev);
			sc->sc_state = 0;
			FUNC10(ppbus);
			return (EBUSY);
		}

		/* wait 1/4 second, give up if we get a signal */
		if (FUNC9(ppbus, lptdev, LPPRI | PCATCH, "lptinit",
		    hz / 4) != EWOULDBLOCK) {
			FUNC5(lptdev);
			sc->sc_state = 0;
			FUNC10(ppbus);
			return (EBUSY);
		}

		/* is printer online and ready for output */
	} while ((FUNC8(ppbus) &
			(LPS_SEL|LPS_OUT|LPS_NBSY|LPS_NERR)) !=
					(LPS_SEL|LPS_NBSY|LPS_NERR));

	sc->sc_control = LPC_SEL|LPC_NINIT;
	if (sc->sc_flags & LP_AUTOLF)
		sc->sc_control |= LPC_AUTOL;

	/* enable interrupt if interrupt-driven */
	if (sc->sc_irq & LP_USE_IRQ)
		sc->sc_control |= LPC_ENA;

	FUNC11(ppbus, sc->sc_control);

	sc->sc_state &= ~LPTINIT;
	sc->sc_state |= OPEN;
	sc->sc_xfercnt = 0;

	/* only use timeout if using interrupt */
	FUNC4(("irq %x\n", sc->sc_irq));
	if (sc->sc_irq & LP_USE_IRQ) {
		sc->sc_state |= TOUT;
		sc->sc_backoff = hz / LPTOUTINITIAL;
		FUNC1(&sc->sc_timer, sc->sc_backoff, lptout, sc);
	}

	/* release the ppbus */
	FUNC5(lptdev);
	FUNC10(ppbus);

	FUNC4(("opened.\n"));
	return(0);
}