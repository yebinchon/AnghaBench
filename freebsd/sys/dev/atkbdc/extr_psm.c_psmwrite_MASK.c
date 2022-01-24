#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct uio {scalar_t__ uio_resid; } ;
struct TYPE_2__ {scalar_t__ level; } ;
struct psm_softc {int state; int /*<<< orphan*/  kbdc; TYPE_1__ mode; } ;
struct cdev {struct psm_softc* si_drv1; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 scalar_t__ PSM_LEVEL_NATIVE ; 
 int PSM_SMALLBUFSIZE ; 
 int PSM_VALID ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,scalar_t__) ; 
 int FUNC2 (struct psm_softc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,struct uio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct cdev *dev, struct uio *uio, int flag)
{
	struct psm_softc *sc = dev->si_drv1;
	u_char buf[PSM_SMALLBUFSIZE];
	int error = 0, i, l;

	if ((sc->state & PSM_VALID) == 0)
		return (EIO);

	if (sc->mode.level < PSM_LEVEL_NATIVE)
		return (ENODEV);

	/* copy data from the user land */
	while (uio->uio_resid > 0) {
		l = FUNC1(PSM_SMALLBUFSIZE, uio->uio_resid);
		error = FUNC3(buf, l, uio);
		if (error)
			break;
		for (i = 0; i < l; i++) {
			FUNC0(4, (LOG_DEBUG, "psm: cmd 0x%x\n", buf[i]));
			if (!FUNC4(sc->kbdc, buf[i])) {
				FUNC0(2, (LOG_DEBUG,
				    "psm: cmd 0x%x failed.\n", buf[i]));
				return (FUNC2(sc, FALSE));
			}
		}
	}

	return (error);
}