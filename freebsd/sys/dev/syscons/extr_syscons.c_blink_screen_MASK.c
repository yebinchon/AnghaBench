#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct tty {int dummy; } ;
struct TYPE_10__ {int xsize; int ysize; TYPE_4__* sc; TYPE_1__* rndr; int /*<<< orphan*/  index; } ;
typedef  TYPE_2__ scr_stat ;
struct TYPE_11__ {int blink_in_progress; int /*<<< orphan*/  cblink; scalar_t__ delayed_next_scr; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* draw ) (TYPE_2__*,int /*<<< orphan*/ ,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int SBT_1S ; 
 struct tty* FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void (*) (void*),TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC8 (struct tty*) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
    scr_stat *scp = arg;
    struct tty *tp;

    if (FUNC1(scp) || (scp->sc->blink_in_progress <= 1)) {
	scp->sc->blink_in_progress = 0;
    	FUNC4(scp);
	tp = FUNC2(scp->sc, scp->index);
	if (FUNC8(tp))
	    FUNC6(tp);
	if (scp->sc->delayed_next_scr)
	    FUNC5(scp->sc, scp->sc->delayed_next_scr - 1);
    }
    else {
	(*scp->rndr->draw)(scp, 0, scp->xsize*scp->ysize, 
			   scp->sc->blink_in_progress & 1);
	scp->sc->blink_in_progress--;
	FUNC3(&scp->sc->cblink, SBT_1S / 15, 0,
	    blink_screen, scp, FUNC0(0));
    }
}