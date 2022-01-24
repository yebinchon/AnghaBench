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
struct uio {int /*<<< orphan*/  uio_resid; } ;
struct cmx_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/ * buf; int /*<<< orphan*/  timeout; scalar_t__ dying; } ;
struct cdev {struct cmx_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSR_BULK_OUT_FULL ; 
 int /*<<< orphan*/  CCID_DRIVER_MINIMUM_TIMEOUT ; 
 int /*<<< orphan*/  CMX_MIN_WRLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int EINVAL ; 
 int ENXIO ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MODEBITS ; 
 int /*<<< orphan*/  SCR_HOST_TO_READER_DONE ; 
 int /*<<< orphan*/  SCR_HOST_TO_READER_START ; 
 int FUNC2 (struct cmx_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct cmx_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cmx_softc*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,struct uio*) ; 

__attribute__((used)) static int
FUNC7(struct cdev *cdev, struct uio *uio, int flag)
{
	struct cmx_softc *sc = cdev->si_drv1;
	int rv, amnt;

	if (sc == NULL || sc->dying)
		return ENXIO;

	FUNC0(sc->dev, "called (len=%d flag=%b)\n",
			uio->uio_resid, flag, MODEBITS);

	if (uio->uio_resid == 0) {
		return 0;
	}

	if (uio->uio_resid < CMX_MIN_WRLEN) {
		return EINVAL;
	}

	if ((rv = FUNC2(sc, SCR_HOST_TO_READER_START)) != 0) {
		return rv;
	}

	sc->timeout = 0;
	while (uio->uio_resid > 0) {
		amnt = FUNC1(uio->uio_resid, sizeof(sc->buf));

		if ((rv = FUNC6(sc->buf, amnt, uio)) != 0) {
			FUNC0(sc->dev, "uiomove failed (%d)\n", rv);
			/* wildly guessed attempt to notify device */
			sc->timeout = CCID_DRIVER_MINIMUM_TIMEOUT;
			FUNC2(sc, SCR_HOST_TO_READER_DONE);
			return rv;
		}

		if (sc->timeout == 0) {
			sc->timeout = FUNC3(sc->buf[0]);
			FUNC0(sc->dev, "cmd=%02x timeout=%lu\n",
					sc->buf[0], sc->timeout);
		}

		for (int i = 0; i < amnt; i++) {
			if ((rv = FUNC4(sc, BSR_BULK_OUT_FULL, 0))!=0) {
				return rv;
			}
			FUNC5(sc, sc->buf[i]);
			FUNC0(sc->dev, "buf[%02x]=%02x\n",
					i, sc->buf[i]);
		}
	}

	if ((rv = FUNC2(sc, SCR_HOST_TO_READER_DONE)) != 0) {
		return rv;
	}

	FUNC0(sc->dev, "success\n");
	return 0;
}