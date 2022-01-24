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
struct uio {scalar_t__ uio_resid; } ;
struct lpt_data {int sc_flags; int /*<<< orphan*/  sc_statbuf; int /*<<< orphan*/  sc_dev; } ;
struct cdev {struct lpt_data* si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUFSTATSIZE ; 
 int EPERM ; 
 int LP_BYPASS ; 
 int /*<<< orphan*/  PPB_NIBBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,struct uio*) ; 

__attribute__((used)) static int
FUNC8(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct lpt_data *sc = dev->si_drv1;
	device_t lptdev = sc->sc_dev;
	device_t ppbus = FUNC0(lptdev);
	int error = 0, len;

	if (sc->sc_flags & LP_BYPASS) {
		/* we can't do reads in bypass mode */
		return (EPERM);
	}

	FUNC5(ppbus);
	if ((error = FUNC2(ppbus, PPB_NIBBLE, 0))) {
		FUNC6(ppbus);
		return (error);
	}

	/* read data in an other buffer, read/write may be simultaneous */
	len = 0;
	while (uio->uio_resid) {
		if ((error = FUNC3(ppbus, PPB_NIBBLE,
				sc->sc_statbuf, FUNC1(BUFSTATSIZE,
				uio->uio_resid), &len))) {
			goto error;
		}

		if (!len)
			goto error;		/* no more data */

		FUNC6(ppbus);
		error = FUNC7(sc->sc_statbuf, len, uio);
		FUNC5(ppbus);
		if (error)
			goto error;
	}

error:
	FUNC4(ppbus);
	FUNC6(ppbus);
	return (error);
}