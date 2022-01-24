#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_info_t ;
struct TYPE_13__ {int /*<<< orphan*/  border; TYPE_2__* sc; int /*<<< orphan*/  ysize; int /*<<< orphan*/  xsize; int /*<<< orphan*/  scr; TYPE_1__* rndr; int /*<<< orphan*/  mode; } ;
typedef  TYPE_3__ scr_stat ;
struct TYPE_14__ {scalar_t__ va_window; } ;
struct TYPE_12__ {TYPE_4__* adp; TYPE_3__* cur_scp; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* init ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  VTB_FRAMEBUFFER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 

int
FUNC7(scr_stat *scp)
{
    video_info_t info;

    /* reject unsupported mode */
    if (FUNC5(scp->sc->adp, scp->mode, &info))
	return 1;

    /* if this vty is not currently showing, do nothing */
    if (scp != scp->sc->cur_scp)
	return 0;

    /* setup video hardware for the given mode */
    FUNC6(scp->sc->adp, scp->mode);
    scp->rndr->init(scp);
#ifndef __sparc64__
    FUNC2(&scp->scr, VTB_FRAMEBUFFER, scp->xsize, scp->ysize,
		(void *)scp->sc->adp->va_window, FALSE);
#endif

    FUNC4(scp);

    FUNC0(scp, scp->border);
    FUNC1(scp);

    return 0;
}