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
typedef  int uint8_t ;
struct uio {size_t uio_resid; } ;
struct TYPE_2__ {int resolution; int rate; int /*<<< orphan*/  level; } ;
struct cyapa_softc {int ps2_cmd; int scaling_mode; scalar_t__ ps2_acked; int remote_mode; int reporting_mode; int track_but; int data_signal; int zenabled; TYPE_1__ mode; int /*<<< orphan*/  delta_z; int /*<<< orphan*/  delta_y; int /*<<< orphan*/  delta_x; int /*<<< orphan*/  rfifo; int /*<<< orphan*/  wfifo; } ;
struct cdev {struct cyapa_softc* si_drv1; } ;

/* Variables and functions */
 int CYAPA_FNGR_LEFT ; 
 int CYAPA_FNGR_MIDDLE ; 
 int CYAPA_FNGR_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (struct cyapa_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cyapa_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct cyapa_softc*) ; 
 void* FUNC3 (struct cyapa_softc*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct cyapa_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cyapa_softc*,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (struct cyapa_softc*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (struct cyapa_softc*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct cyapa_softc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int FUNC10 (char*,size_t,struct uio*) ; 

__attribute__((used)) static int
FUNC11(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct cyapa_softc *sc;
	int error;
	int cmd_completed;
	size_t n;
	uint8_t c0;
	char* ptr;

	sc = dev->si_drv1;
again:
	/*
	 * Copy data from userland.  This will also cross-over the end
	 * of the fifo and keep filling.
	 */
	FUNC0(sc);
	while ((n = FUNC6(sc, &sc->wfifo)) > 0 && uio->uio_resid) {
		if (n > uio->uio_resid)
			n = uio->uio_resid;
		ptr = FUNC7(sc, &sc->wfifo, 0);
		FUNC2(sc);
		error = FUNC10(ptr, n, uio);
		FUNC0(sc);
		if (error)
			break;
		FUNC7(sc, &sc->wfifo, n);
	}

	/* Handle commands */
	cmd_completed = (FUNC4(sc, &sc->wfifo) != 0);
	while (FUNC4(sc, &sc->wfifo) && cmd_completed && error == 0) {
		if (sc->ps2_cmd == 0)
			sc->ps2_cmd = FUNC3(sc, &sc->wfifo);
		switch(sc->ps2_cmd) {
		case 0xE6:
			/* SET SCALING 1:1 */
			sc->scaling_mode = 0;
			FUNC8(sc, &sc->rfifo, 0xFA);
			break;
		case 0xE7:
			/* SET SCALING 2:1 */
			sc->scaling_mode = 1;
			FUNC8(sc, &sc->rfifo, 0xFA);
			break;
		case 0xE8:
			/* SET RESOLUTION +1 byte */
			if (sc->ps2_acked == 0) {
				sc->ps2_acked = 1;
				FUNC8(sc, &sc->rfifo, 0xFA);
			}
			if (FUNC4(sc, &sc->wfifo) == 0) {
				cmd_completed = 0;
				break;
			}
			sc->mode.resolution = FUNC3(sc, &sc->wfifo);
			FUNC8(sc, &sc->rfifo, 0xFA);
			break;
		case 0xE9:
			/*
			 * STATUS REQUEST
			 *
			 * byte1:
			 *	bit 7	0
			 *	bit 6	Mode	(1=remote mode, 0=stream mode)
			 *	bit 5	Enable	(data reporting enabled)
			 *	bit 4	Scaling	(0=1:1 1=2:1)
			 *	bit 3	0
			 *	bit 2	LEFT BUTTON    (1 if pressed)
			 *	bit 1	MIDDLE BUTTON  (1 if pressed)
			 *	bit 0	RIGHT BUTTON   (1 if pressed)
			 *
			 * byte2: resolution counts/mm
			 * byte3: sample rate
			 */
			c0 = 0;
			if (sc->remote_mode)
				c0 |= 0x40;
			if (sc->reporting_mode)
				c0 |= 0x20;
			if (sc->scaling_mode)
				c0 |= 0x10;
			if (sc->track_but & CYAPA_FNGR_LEFT)
				c0 |= 0x04;
			if (sc->track_but & CYAPA_FNGR_MIDDLE)
				c0 |= 0x02;
			if (sc->track_but & CYAPA_FNGR_RIGHT)
				c0 |= 0x01;
			FUNC8(sc, &sc->rfifo, 0xFA);
			FUNC8(sc, &sc->rfifo, c0);
			FUNC8(sc, &sc->rfifo, 0x00);
			FUNC8(sc, &sc->rfifo, 100);
			break;
		case 0xEA:
			/* Set stream mode and reset movement counters */
			sc->remote_mode = 0;
			FUNC8(sc, &sc->rfifo, 0xFA);
			sc->delta_x = 0;
			sc->delta_y = 0;
			sc->delta_z = 0;
			break;
		case 0xEB:
			/*
			 * Read Data (if in remote mode).  If not in remote
			 * mode force an event.
			 */
			FUNC8(sc, &sc->rfifo, 0xFA);
			sc->data_signal = 1;
			break;
		case 0xEC:
			/* Reset Wrap Mode (ignored) */
			FUNC8(sc, &sc->rfifo, 0xFA);
			break;
		case 0xEE:
			/* Set Wrap Mode (ignored) */
			FUNC8(sc, &sc->rfifo, 0xFA);
			break;
		case 0xF0:
			/* Set Remote Mode */
			sc->remote_mode = 1;
			FUNC8(sc, &sc->rfifo, 0xFA);
			sc->delta_x = 0;
			sc->delta_y = 0;
			sc->delta_z = 0;
			break;
		case 0xF2:
			/*
			 * Get Device ID
			 *
			 * If we send 0x00 - normal PS/2 mouse, no Z-axis
			 *
			 * If we send 0x03 - Intellimouse, data packet has
			 * an additional Z movement byte (8 bits signed).
			 * (also reset movement counters)
			 *
			 * If we send 0x04 - Now includes z-axis and the
			 * 4th and 5th mouse buttons.
			 */
			FUNC8(sc, &sc->rfifo, 0xFA);
			switch(sc->zenabled) {
			case 1:
				FUNC8(sc, &sc->rfifo, 0x03);
				break;
			case 2:
				FUNC8(sc, &sc->rfifo, 0x04);
				break;
			default:
				FUNC8(sc, &sc->rfifo, 0x00);
				break;
			}
			sc->delta_x = 0;
			sc->delta_y = 0;
			sc->delta_z = 0;
			break;
		case 0xF3:
			/*
			 * Set Sample Rate
			 *
			 * byte1: the sample rate
			 */
			if (sc->ps2_acked == 0) {
				sc->ps2_acked = 1;
				FUNC8(sc, &sc->rfifo, 0xFA);
			}
			if (FUNC4(sc, &sc->wfifo) == 0) {
				cmd_completed = 0;
				break;
			}
			sc->mode.rate = FUNC3(sc, &sc->wfifo);
			FUNC8(sc, &sc->rfifo, 0xFA);

			/*
			 * zenabling sequence: 200,100,80 (device id 0x03)
			 *		       200,200,80 (device id 0x04)
			 *
			 * We support id 0x03 (no 4th or 5th button).
			 * We support id 0x04 (w/ 4th and 5th button).
			 */
			if (sc->zenabled == 0 && sc->mode.rate == 200)
				sc->zenabled = -1;
			else if (sc->zenabled == -1 && sc->mode.rate == 100)
				sc->zenabled = -2;
			else if (sc->zenabled == -1 && sc->mode.rate == 200)
				sc->zenabled = -3;
			else if (sc->zenabled == -2 && sc->mode.rate == 80)
				sc->zenabled = 1;	/* z-axis mode */
			else if (sc->zenabled == -3 && sc->mode.rate == 80)
				sc->zenabled = 2;	/* z-axis+but4/5 */
			if (sc->mode.level)
				sc->zenabled = 1;
			break;
		case 0xF4:
			/* Enable data reporting.  Only effects stream mode. */
			FUNC8(sc, &sc->rfifo, 0xFA);
			sc->reporting_mode = 1;
			break;
		case 0xF5:
			/*
			 * Disable data reporting.  Only effects stream mode
			 * and is ignored right now.
			 */
			FUNC8(sc, &sc->rfifo, 0xFA);
			sc->reporting_mode = 1;
			break;
		case 0xF6:
			/*
			 * SET DEFAULTS
			 *
			 * (reset sampling rate, resolution, scaling and
			 *  enter stream mode)
			 */
			FUNC8(sc, &sc->rfifo, 0xFA);
			sc->mode.rate = 100;
			sc->mode.resolution = 4;
			sc->scaling_mode = 0;
			sc->reporting_mode = 1;
			sc->remote_mode = 0;
			sc->delta_x = 0;
			sc->delta_y = 0;
			sc->delta_z = 0;
			/* signal */
			break;
		case 0xFE:
			/*
			 * RESEND
			 *
			 * Force a resend by guaranteeing that reported_but
			 * differs from track_but.
			 */
			FUNC8(sc, &sc->rfifo, 0xFA);
			sc->data_signal = 1;
			break;
		case 0xFF:
			/*
			 * RESET
			 */
			FUNC5(sc, &sc->rfifo);	/* should we do this? */
			FUNC5(sc, &sc->wfifo);	/* should we do this? */
			FUNC8(sc, &sc->rfifo, 0xFA);
			sc->delta_x = 0;
			sc->delta_y = 0;
			sc->delta_z = 0;
			sc->zenabled = 0;
			sc->mode.level = 0;
			break;
		default:
			FUNC9("unknown command %02x\n", sc->ps2_cmd);
			break;
		}
		if (cmd_completed) {
			sc->ps2_cmd = 0;
			sc->ps2_acked = 0;
		}
		FUNC1(sc);
	}
	FUNC2(sc);
	if (error == 0 && (cmd_completed || uio->uio_resid))
		goto again;
	return (error);
}