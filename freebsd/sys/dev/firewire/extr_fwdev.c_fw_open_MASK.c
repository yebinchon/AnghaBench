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
struct fw_drv1 {int /*<<< orphan*/  rq; int /*<<< orphan*/  binds; int /*<<< orphan*/  fc; } ;
struct firewire_softc {int /*<<< orphan*/  fc; } ;
struct cdev {int si_flags; struct fw_drv1* si_drv1; } ;
typedef  int /*<<< orphan*/  fw_proc ;

/* Variables and functions */
 int FUNC0 (struct cdev*) ; 
 int FUNC1 (struct cdev*) ; 
 scalar_t__ FUNC2 (struct cdev*) ; 
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int /*<<< orphan*/  M_FW ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int SI_NAMED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC6 (struct cdev*) ; 
 struct firewire_softc* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  firewire_cdevsw ; 
 int /*<<< orphan*/  firewire_devclass ; 
 int FUNC8 (struct cdev*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int) ; 
 struct fw_drv1* FUNC10 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC11(struct cdev *dev, int flags, int fmt, fw_proc *td)
{
	int err = 0;
	int unit = FUNC1(dev);
	struct fw_drv1 *d;
	struct firewire_softc *sc;

	if (FUNC2(dev))
		return FUNC8(dev, flags, fmt, td);

	sc = FUNC7(firewire_devclass, unit);
	if (sc == NULL)
		return (ENXIO);

	FUNC3(sc->fc);
	if (dev->si_drv1 != NULL) {
		FUNC4(sc->fc);
		return (EBUSY);
	}
	/* set dummy value for allocation */
	dev->si_drv1 = (void *)-1;
	FUNC4(sc->fc);

	dev->si_drv1 = FUNC10(sizeof(struct fw_drv1), M_FW, M_WAITOK | M_ZERO);

	if ((dev->si_flags & SI_NAMED) == 0) {
		int unit = FUNC1(dev);
		int sub = FUNC0(dev);

		FUNC9(&firewire_cdevsw, FUNC6(dev),
		    UID_ROOT, GID_OPERATOR, 0660, "fw%d.%d", unit, sub);
	}

	d = dev->si_drv1;
	d->fc = sc->fc;
	FUNC5(&d->binds);
	FUNC5(&d->rq);

	return err;
}