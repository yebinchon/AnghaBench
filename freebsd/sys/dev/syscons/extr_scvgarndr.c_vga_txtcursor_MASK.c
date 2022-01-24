#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_adapter_t ;
struct TYPE_6__ {scalar_t__ height; } ;
struct TYPE_8__ {int status; int xsize; int /*<<< orphan*/  vtb; int /*<<< orphan*/  scr; TYPE_2__* sc; TYPE_1__ curs_attr; } ;
typedef  TYPE_3__ scr_stat ;
struct TYPE_7__ {int /*<<< orphan*/ * adp; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int VR_CURSOR_BLINK ; 
 int VR_CURSOR_ON ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC6(scr_stat *scp, int at, int blink, int on, int flip)
{
	video_adapter_t *adp;
	int cursor_attr;

	if (scp->curs_attr.height <= 0)	/* the text cursor is disabled */
		return;

	adp = scp->sc->adp;
	if (blink) {
		scp->status |= VR_CURSOR_BLINK;
		if (on) {
			scp->status |= VR_CURSOR_ON;
			FUNC5(adp, at%scp->xsize,
			    at/scp->xsize);
		} else {
			if (scp->status & VR_CURSOR_ON)
				FUNC5(adp, -1, -1);
			scp->status &= ~VR_CURSOR_ON;
		}
	} else {
		scp->status &= ~VR_CURSOR_BLINK;
		if (on) {
			scp->status |= VR_CURSOR_ON;
			FUNC0(scp, at,
					   FUNC2(&scp->vtb, at),
					   FUNC1(&scp->vtb, at),
					   flip);
		} else {
			cursor_attr = FUNC1(&scp->vtb, at);
			if (flip)
				cursor_attr = FUNC4(cursor_attr, TRUE);
			if (scp->status & VR_CURSOR_ON)
				FUNC3(&scp->scr, at,
					    FUNC2(&scp->vtb, at),
					    cursor_attr);
			scp->status &= ~VR_CURSOR_ON;
		}
	}
}