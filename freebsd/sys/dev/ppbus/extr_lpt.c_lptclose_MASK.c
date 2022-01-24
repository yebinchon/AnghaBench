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
struct lpt_data {int sc_flags; int sc_state; int sc_irq; scalar_t__ sc_xfercnt; int /*<<< orphan*/  sc_timer; int /*<<< orphan*/  sc_dev; } ;
struct cdev {struct lpt_data* si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ EWOULDBLOCK ; 
 int INTERRUPTED ; 
 int /*<<< orphan*/  LPC_NINIT ; 
 int LPPRI ; 
 int LPS_NBSY ; 
 int LPS_NERR ; 
 int LPS_OUT ; 
 int LPS_SEL ; 
 int LP_BYPASS ; 
 int LP_USE_IRQ ; 
 int OPEN ; 
 int PCATCH ; 
 int PPB_INTR ; 
 int PPB_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static	int
FUNC10(struct cdev *dev, int flags, int fmt, struct thread *td)
{
	struct lpt_data *sc = dev->si_drv1;
	device_t lptdev = sc->sc_dev;
	device_t ppbus = FUNC1(lptdev);
	int err;

	FUNC5(ppbus);
	if (sc->sc_flags & LP_BYPASS)
		goto end_close;

	if ((err = FUNC4(lptdev, PPB_WAIT|PPB_INTR)) != 0) {
		FUNC8(ppbus);
		return (err);
	}

	/* if the last write was interrupted, don't complete it */
	if ((!(sc->sc_state  & INTERRUPTED)) && (sc->sc_irq & LP_USE_IRQ))
		while ((FUNC6(ppbus) &
			(LPS_SEL|LPS_OUT|LPS_NBSY|LPS_NERR)) !=
			(LPS_SEL|LPS_NBSY|LPS_NERR) || sc->sc_xfercnt)
			/* wait 1 second, give up if we get a signal */
			if (FUNC7(ppbus, lptdev, LPPRI | PCATCH, "lpclose",
			    hz) != EWOULDBLOCK)
				break;

	sc->sc_state &= ~OPEN;
	FUNC0(&sc->sc_timer);
	FUNC9(ppbus, LPC_NINIT);

	/*
	 * unregistration of interrupt forced by release
	 */
	FUNC3(lptdev);

end_close:
	sc->sc_state = 0;
	sc->sc_xfercnt = 0;
	FUNC8(ppbus);
	FUNC2(("closed.\n"));
	return(0);
}