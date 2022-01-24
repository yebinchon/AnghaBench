#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int vi_width; int vi_height; } ;
typedef  TYPE_2__ video_info_t ;
struct winsize {int /*<<< orphan*/  ws_row; int /*<<< orphan*/  ws_col; } ;
struct tty {int dummy; } ;
struct TYPE_14__ {int status; int mode; int xpixel; int ypixel; int /*<<< orphan*/  ysize; int /*<<< orphan*/  xsize; TYPE_1__* sc; scalar_t__ font_size; int /*<<< orphan*/ * font; scalar_t__ yoff; scalar_t__ xoff; } ;
typedef  TYPE_3__ scr_stat ;
struct TYPE_15__ {int /*<<< orphan*/  va_name; } ;
struct TYPE_12__ {TYPE_3__* cur_scp; TYPE_4__* adp; } ;

/* Variables and functions */
 int ENODEV ; 
 int GRAPHICS_MODE ; 
 int MOUSE_HIDDEN ; 
 int MOUSE_VISIBLE ; 
 int PIXEL_MODE ; 
 int UNKNOWN_MODE ; 
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct tty*,struct winsize*) ; 
 scalar_t__ FUNC8 (TYPE_4__*,int,TYPE_2__*) ; 

int
FUNC9(scr_stat *scp, struct tty *tp, int mode)
{
#ifdef SC_NO_MODE_CHANGE
    return ENODEV;
#else
    video_info_t info;
    struct winsize wsz;
    int error;
    int s;

    if (FUNC8(scp->sc->adp, mode, &info))
	return ENODEV;

    /* stop screen saver, etc */
    s = FUNC5();
    if ((error = FUNC0(scp))) {
	FUNC6(s);
	return error;
    }

    if (FUNC3(scp, scp->sc->adp->va_name, GRAPHICS_MODE) == NULL) {
	FUNC6(s);
	return ENODEV;
    }

    /* set up scp */
    scp->status |= (UNKNOWN_MODE | GRAPHICS_MODE | MOUSE_HIDDEN);
    scp->status &= ~(PIXEL_MODE | MOUSE_VISIBLE);
    scp->mode = mode;
    /*
     * Don't change xsize and ysize; preserve the previous vty
     * and history buffers.
     */
    scp->xoff = 0;
    scp->yoff = 0;
    scp->xpixel = info.vi_width;
    scp->ypixel = info.vi_height;
    scp->font = NULL;
    scp->font_size = 0;
#ifndef SC_NO_SYSMOUSE
    /* move the mouse cursor at the center of the screen */
    FUNC2(scp, scp->xpixel / 2, scp->ypixel / 2);
#endif
    FUNC1(scp, NULL);
    FUNC6(s);

    if (scp == scp->sc->cur_scp)
	FUNC4(scp);
    /* clear_graphics();*/
    scp->status &= ~UNKNOWN_MODE;

    if (tp == NULL)
	return 0;
    wsz.ws_col = scp->xsize;
    wsz.ws_row = scp->ysize;
    FUNC7(tp, &wsz);
    return 0;
#endif /* SC_NO_MODE_CHANGE */
}