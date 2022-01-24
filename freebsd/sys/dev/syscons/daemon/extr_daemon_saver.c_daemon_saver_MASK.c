#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int vi_flags; } ;
struct TYPE_15__ {TYPE_1__ va_info; } ;
typedef  TYPE_2__ video_adapter_t ;
struct TYPE_16__ {int xsize; int ysize; int /*<<< orphan*/  scr; } ;
typedef  TYPE_3__ scr_stat ;
struct TYPE_17__ {int /*<<< orphan*/ * scr_map; TYPE_3__* cur_scp; } ;
typedef  TYPE_4__ sc_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BG_BLACK ; 
 int DAEMON_MAX_HEIGHT ; 
 int DAEMON_MAX_WIDTH ; 
 int EAGAIN ; 
 int FG_LIGHTGREY ; 
 int V_INFO_GRAPHICS ; 
 int blanked ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  message ; 
 int messagelen ; 
 TYPE_4__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int,int) ; 

__attribute__((used)) static int
FUNC9(video_adapter_t *adp, int blank)
{
	static int txpos = 10, typos = 10;
	static int txdir = -1, tydir = -1;
	static int dxpos = 0, dypos = 0;
	static int dxdir = 1, dydir = 1;
	static int moved_daemon = 0;
	static int xoff, yoff, toff;
	static int xlen, ylen, tlen;
	sc_softc_t *sc;
	scr_stat *scp;
	int min, max;

	sc = FUNC5(adp, NULL);
	if (sc == NULL)
		return EAGAIN;
	scp = sc->cur_scp;

	if (blank) {
		if (adp->va_info.vi_flags & V_INFO_GRAPHICS)
			return EAGAIN;
		if (blanked == 0) {
			/* clear the screen and set the border color */
			FUNC7(&scp->scr, sc->scr_map[0x20],
				     FUNC0(FG_LIGHTGREY | BG_BLACK));
			FUNC8(adp, -1, -1);
			FUNC6(scp, 0);
			xlen = ylen = tlen = 0;
		}
		if (blanked++ < 2)
			return 0;
		blanked = 1;

 		FUNC1(sc, dxpos, dypos, dxdir, xoff, yoff, xlen, ylen);
		FUNC2(sc, txpos, typos, toff, message, tlen);

		if (++moved_daemon) {
			/*
			 * The daemon picture may be off the screen, if
			 * screen size is chagened while the screen
			 * saver is inactive. Make sure the origin of
			 * the picture is between min and max.
			 */
			if (scp->xsize <= DAEMON_MAX_WIDTH) {
				/*
				 * If the screen width is too narrow, we
				 * allow part of the picture go off
				 * the screen so that the daemon won't
				 * flip too often.
				 */
				min = scp->xsize - DAEMON_MAX_WIDTH - 10;
				max = 10;
			} else {
				min = 0;
				max = scp->xsize - DAEMON_MAX_WIDTH;
			}
			if (dxpos <= min) {
				dxpos = min;
				dxdir = 1;
			} else if (dxpos >= max) {
				dxpos = max;
				dxdir = -1;
			}

			if (scp->ysize <= DAEMON_MAX_HEIGHT) {
				min = scp->ysize - DAEMON_MAX_HEIGHT - 10;
				max = 10;
			} else {
				min = 0;
				max = scp->ysize - DAEMON_MAX_HEIGHT;
			}
			if (dypos <= min) {
				dypos = min;
				dydir = 1;
			} else if (dypos >= max) {
				dypos = max;
				dydir = -1;
			}

			moved_daemon = -1;
			dxpos += dxdir; dypos += dydir;

			/* clip the picture */
			xoff = 0;
			xlen = DAEMON_MAX_WIDTH;
			if (dxpos + xlen <= 0)
				xlen = 0;
			else if (dxpos < 0)
				xoff = -dxpos;
			if (dxpos >= scp->xsize)
				xlen = 0;
			else if (dxpos + xlen > scp->xsize)
				xlen = scp->xsize - dxpos;
			yoff = 0;
			ylen = DAEMON_MAX_HEIGHT;
			if (dypos + ylen <= 0)
				ylen = 0;
			else if (dypos < 0)
				yoff = -dypos;
			if (dypos >= scp->ysize)
				ylen = 0;
			else if (dypos + ylen > scp->ysize)
				ylen = scp->ysize - dypos;
		}

		if (scp->xsize <= messagelen) {
			min = scp->xsize - messagelen - 10;
			max = 10;
		} else {
			min = 0;
			max = scp->xsize - messagelen;
		}
		if (txpos <= min) {
			txpos = min;
			txdir = 1;
		} else if (txpos >= max) {
			txpos = max;
			txdir = -1;
		}
		if (typos <= 0) {
			typos = 0;
			tydir = 1;
		} else if (typos >= scp->ysize - 1) {
			typos = scp->ysize - 1;
			tydir = -1;
		}
		txpos += txdir; typos += tydir;

		toff = 0;
		tlen = messagelen;
		if (txpos + tlen <= 0)
			tlen = 0;
		else if (txpos < 0)
			toff = -txpos;
		if (txpos >= scp->xsize)
			tlen = 0;
		else if (txpos + tlen > scp->xsize)
			tlen = scp->xsize - txpos;

 		FUNC3(sc, dxpos, dypos, dxdir, xoff, yoff, xlen, ylen);
		FUNC4(sc, txpos, typos, toff, message, tlen);
	} else
		blanked = 0;

	return 0;
}