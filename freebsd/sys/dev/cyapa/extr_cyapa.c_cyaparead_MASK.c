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
typedef  int uint16_t ;
struct uio {size_t uio_resid; } ;
struct cyapa_softc {int data_signal; int delta_x; int delta_y; scalar_t__ track_but; scalar_t__ reported_but; int delta_z; int zenabled; int blocked; int /*<<< orphan*/  rfifo; int /*<<< orphan*/  mutex; int /*<<< orphan*/  fuzz_z; int /*<<< orphan*/  fuzz_y; int /*<<< orphan*/  fuzz_x; } ;
struct cdev {struct cyapa_softc* si_drv1; } ;

/* Variables and functions */
 int CYAPA_FNGR_LEFT ; 
 int CYAPA_FNGR_MIDDLE ; 
 int CYAPA_FNGR_RIGHT ; 
 int EWOULDBLOCK ; 
 int IO_NDELAY ; 
 int /*<<< orphan*/  PCATCH ; 
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cyapa_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct cyapa_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct cyapa_softc*) ; 
 scalar_t__ FUNC4 (struct cyapa_softc*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (struct cyapa_softc*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC6 (struct cyapa_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct cyapa_softc*,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*,size_t,struct uio*) ; 

__attribute__((used)) static int
FUNC10(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct cyapa_softc *sc;
	int error;
	int didread;
	size_t n;
	char* ptr;

	sc = dev->si_drv1;
	/* If buffer is empty, load a new event if it is ready */
	FUNC1(sc);
again:
	if (FUNC4(sc, &sc->rfifo) &&
	    (sc->data_signal || sc->delta_x || sc->delta_y ||
	     sc->track_but != sc->reported_but)) {
		uint8_t c0;
		uint16_t but;
		int delta_x;
		int delta_y;
		int delta_z;

		/* Accumulate delta_x, delta_y */
		sc->data_signal = 0;
		delta_x = sc->delta_x;
		delta_y = sc->delta_y;
		delta_z = sc->delta_z;
		if (delta_x > 255) {
			delta_x = 255;
			sc->data_signal = 1;
		}
		if (delta_x < -256) {
			delta_x = -256;
			sc->data_signal = 1;
		}
		if (delta_y > 255) {
			delta_y = 255;
			sc->data_signal = 1;
		}
		if (delta_y < -256) {
			delta_y = -256;
			sc->data_signal = 1;
		}
		if (delta_z > 255) {
			delta_z = 255;
			sc->data_signal = 1;
		}
		if (delta_z < -256) {
			delta_z = -256;
			sc->data_signal = 1;
		}
		but = sc->track_but;

		/* Adjust baseline for next calculation */
		sc->delta_x -= delta_x;
		sc->delta_y -= delta_y;
		sc->delta_z -= delta_z;
		sc->reported_but = but;

		/*
		 * Fuzz reduces movement jitter by introducing some
		 * hysteresis.  It operates without cumulative error so
		 * if you swish around quickly and return your finger to
		 * where it started, so to will the mouse.
		 */
		delta_x = FUNC0(delta_x, &sc->fuzz_x);
		delta_y = FUNC0(delta_y, &sc->fuzz_y);
		delta_z = FUNC0(delta_z, &sc->fuzz_z);

		/*
		 * Generate report
		 */
		c0 = 0;
		if (delta_x < 0)
			c0 |= 0x10;
		if (delta_y < 0)
			c0 |= 0x20;
		c0 |= 0x08;
		if (but & CYAPA_FNGR_LEFT)
			c0 |= 0x01;
		if (but & CYAPA_FNGR_MIDDLE)
			c0 |= 0x04;
		if (but & CYAPA_FNGR_RIGHT)
			c0 |= 0x02;

		FUNC7(sc, &sc->rfifo, c0);
		FUNC7(sc, &sc->rfifo, (uint8_t)delta_x);
		FUNC7(sc, &sc->rfifo, (uint8_t)delta_y);
		switch(sc->zenabled) {
		case 1:
			/* Z axis all 8 bits */
			FUNC7(sc, &sc->rfifo, (uint8_t)delta_z);
			break;
		case 2:
			/*
			 * Z axis low 4 bits + 4th button and 5th button
			 * (high 2 bits must be left 0).  Auto-scale
			 * delta_z to fit to avoid a wrong-direction
			 * overflow (don't try to retain the remainder).
			 */
			while (delta_z > 7 || delta_z < -8)
				delta_z >>= 1;
			c0 = (uint8_t)delta_z & 0x0F;
			FUNC7(sc, &sc->rfifo, c0);
			break;
		default:
			/* basic PS/2 */
			break;
		}
		FUNC2(sc);
	}

	/* Blocking / Non-blocking */
	error = 0;
	didread = (uio->uio_resid == 0);

	while ((ioflag & IO_NDELAY) == 0 && FUNC4(sc, &sc->rfifo)) {
		if (sc->data_signal)
			goto again;
		sc->blocked = 1;
		error = FUNC8(&sc->blocked, &sc->mutex, PCATCH, "cyablk", 0);
		if (error)
			break;
	}

	/* Return any buffered data */
	while (error == 0 && uio->uio_resid &&
	    (n = FUNC6(sc, &sc->rfifo)) > 0) {
		if (n > uio->uio_resid)
			n = uio->uio_resid;
		ptr = FUNC5(sc, &sc->rfifo, 0);
		FUNC3(sc);
		error = FUNC9(ptr, n, uio);
		FUNC1(sc);
		if (error)
			break;
		FUNC5(sc, &sc->rfifo, n);
		didread = 1;
	}
	FUNC3(sc);

	if (error == 0 && didread == 0) {
		error = EWOULDBLOCK;
	}
	return (didread ? 0 : error);
}