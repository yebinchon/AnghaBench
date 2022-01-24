#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct pps_data {int busy; int /*<<< orphan*/  lock; int /*<<< orphan*/  ppbus; int /*<<< orphan*/  ppsdev; int /*<<< orphan*/  timeout; TYPE_2__* pps; } ;
struct cdev {int /*<<< orphan*/  si_drv2; struct pps_data* si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {scalar_t__ mode; } ;
struct TYPE_4__ {TYPE_1__ ppsparam; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPB_COMPATIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static	int
FUNC9(struct cdev *dev, int flags, int fmt, struct thread *td)
{
	struct pps_data *sc = dev->si_drv1;
	int subdev = (intptr_t)dev->si_drv2;

	FUNC7(&sc->lock);
	sc->pps[subdev].ppsparam.mode = 0;	/* PHK ??? */
	FUNC1(sc->ppbus);
	sc->busy &= ~(1 << subdev);
	if (subdev > 0 && !(sc->busy & ~1))
		FUNC0(&sc->timeout);
	if (!sc->busy) {
		device_t ppsdev = sc->ppsdev;
		device_t ppbus = sc->ppbus;

		FUNC6(ppbus, 0);
		FUNC5(ppbus, 0);

		FUNC3(ppbus, PPB_COMPATIBLE);
		FUNC2(ppbus, ppsdev);
	}
	FUNC4(sc->ppbus);
	FUNC8(&sc->lock);
	return(0);
}