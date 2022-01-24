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
typedef  int uint8_t ;
struct uio {int uio_resid; } ;
struct cmx_softc {int /*<<< orphan*/  dev; void** buf; int /*<<< orphan*/  sel; int /*<<< orphan*/  ch; scalar_t__ polling; scalar_t__ dying; } ;
struct cdev {struct cmx_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSR_BULK_IN_FULL ; 
 int /*<<< orphan*/  FUNC0 (struct cmx_softc*) ; 
 int CMX_MIN_RDLEN ; 
 int /*<<< orphan*/  FUNC1 (struct cmx_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENXIO ; 
 int FUNC3 (unsigned long,int) ; 
 int /*<<< orphan*/  MODEBITS ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  PZERO ; 
 int /*<<< orphan*/  SCR_READER_TO_HOST_DONE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct cmx_softc*) ; 
 int FUNC7 (struct cmx_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct cmx_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct cmx_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (void**,int,struct uio*) ; 

__attribute__((used)) static int
FUNC12(struct cdev *cdev, struct uio *uio, int flag)
{
	struct cmx_softc *sc = cdev->si_drv1;
	unsigned long bytes_left;
	uint8_t uc;
	int rv, amnt, offset;

	if (sc == NULL || sc->dying)
		return ENXIO;

	FUNC2(sc->dev, "called (len=%d flag=%b)\n",
		uio->uio_resid, flag, MODEBITS);

	FUNC0(sc);
	if (sc->polling) {
		FUNC2(sc->dev, "disabling polling\n");
		FUNC5(&sc->ch);
		sc->polling = 0;
		FUNC1(sc);
		FUNC4(&sc->ch);
		FUNC10(&sc->sel, PZERO);
	} else {
		FUNC1(sc);
	}

	if (uio->uio_resid == 0) {
		return 0;
	}

	if (uio->uio_resid < CMX_MIN_RDLEN) {
		return EINVAL;
	}

	if (flag & O_NONBLOCK) {
		if (FUNC8(sc, BSR_BULK_IN_FULL, 0)) {
			return EAGAIN;
		}
	}

	for (int i = 0; i < 5; i++) {
		if ((rv = FUNC9(sc, BSR_BULK_IN_FULL, 1)) != 0) {
			return rv;
		}
		sc->buf[i] = FUNC6(sc);
		FUNC2(sc->dev, "buf[%02x]=%02x\n", i, sc->buf[i]);
	}

	bytes_left = CMX_MIN_RDLEN +
	                (0x000000FF&((char)sc->buf[1])) +
	                (0x0000FF00&((char)sc->buf[2] << 8)) +
	                (0x00FF0000&((char)sc->buf[3] << 16)) +
	                (0xFF000000&((char)sc->buf[4] << 24));
	FUNC2(sc->dev, "msgsz=%lu\n", bytes_left);

	if (uio->uio_resid < bytes_left) {
		return EINVAL;
	}

	offset = 5; /* prefetched header */
	while (bytes_left > 0) {
		amnt = FUNC3(bytes_left, sizeof(sc->buf));

		for (int i = offset; i < amnt; i++) {
			if ((rv = FUNC9(sc, BSR_BULK_IN_FULL, 1))!=0) {
				return rv;
			}
			sc->buf[i] = FUNC6(sc);
			FUNC2(sc->dev, "buf[%02x]=%02x\n",
					i, sc->buf[i]);
		}

		if ((rv = FUNC11(sc->buf, amnt, uio)) != 0) {
			FUNC2(sc->dev, "uiomove failed (%d)\n", rv);
			return rv;
		}

		if (offset)
			offset = 0;
		bytes_left -= amnt;
	}

	if ((rv = FUNC9(sc, BSR_BULK_IN_FULL, 1)) != 0) {
		return rv;
	}

	if ((rv = FUNC7(sc, SCR_READER_TO_HOST_DONE)) != 0) {
		return rv;
	}

	uc = FUNC6(sc);
	FUNC2(sc->dev, "success (DTR=%02x)\n", uc);
	return 0;
}