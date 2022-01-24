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
struct pps_data {int busy; int /*<<< orphan*/  lock; int /*<<< orphan*/  ppbus; int /*<<< orphan*/  lastdata; int /*<<< orphan*/  timeout; int /*<<< orphan*/  ppsdev; } ;
struct cdev {int /*<<< orphan*/  si_drv2; struct pps_data* si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINTR ; 
 int IRQENABLE ; 
 int PCD ; 
 int PPB_INTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PPB_PS2 ; 
 int PPB_WAIT ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int SELECTIN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct pps_data*) ; 
 int nINIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ppshcpoll ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static	int
FUNC11(struct cdev *dev, int flags, int fmt, struct thread *td)
{
	struct pps_data *sc = dev->si_drv1;
	device_t ppbus = sc->ppbus;
	int subdev = (intptr_t)dev->si_drv2;
	int i;

	/*
	 * The sx lock is here solely to serialize open()'s to close
	 * the race of concurrent open()'s when pps(4) doesn't own the
	 * ppbus.
	 */
	FUNC9(&sc->lock);
	FUNC3(ppbus);
	if (!sc->busy) {
		device_t ppsdev = sc->ppsdev;

		if (FUNC5(ppbus, ppsdev, PPB_WAIT|PPB_INTR)) {
			FUNC7(ppbus);
			FUNC10(&sc->lock);
			return (EINTR);
		}

		i = FUNC6(sc->ppbus, PPB_PS2);
		FUNC1("EPP: %d %d\n", i, FUNC0(sc->ppbus));

		i = IRQENABLE | PCD | nINIT | SELECTIN;
		FUNC8(ppbus, i);
	}
	if (subdev > 0 && !(sc->busy & ~1)) {
		/* XXX: Timeout of 1?  hz/100 instead perhaps? */
		FUNC2(&sc->timeout, 1, ppshcpoll, sc);
		sc->lastdata = FUNC4(sc->ppbus);
	}
	sc->busy |= (1 << subdev);
	FUNC7(ppbus);
	FUNC10(&sc->lock);
	return(0);
}