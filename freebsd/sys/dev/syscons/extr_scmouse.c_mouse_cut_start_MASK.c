#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int status; int mouse_pos; int mouse_cut_start; int mouse_cut_end; int xsize; int /*<<< orphan*/  vtb; int /*<<< orphan*/  sc; } ;
typedef  TYPE_1__ scr_stat ;

/* Variables and functions */
 int MOUSE_CUTTING ; 
 int MOUSE_VISIBLE ; 
 char* cut_buffer ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(scr_stat *scp)
{
    int i;
    int s;

    if (scp->status & MOUSE_VISIBLE) {
	FUNC2(scp->sc);
	if ((scp->mouse_pos == scp->mouse_cut_start) &&
	    (scp->mouse_pos == scp->mouse_cut_end)) {
	    cut_buffer[0] = '\0';
	    return;
	} else if (FUNC5(scp, scp->mouse_pos) >= scp->xsize) {
	    /* if the pointer is on trailing blank chars, mark towards eol */
	    i = FUNC4(scp, scp->mouse_pos) + 1;
	    s = FUNC6();
	    scp->mouse_cut_start =
	        FUNC1(scp->mouse_pos, scp->xsize) + i;
	    scp->mouse_cut_end =
	        (scp->mouse_pos / scp->xsize + 1) * scp->xsize - 1;
	    FUNC7(s);
	    cut_buffer[0] = '\r';
	} else {
	    s = FUNC6();
	    scp->mouse_cut_start = scp->mouse_pos;
	    scp->mouse_cut_end = scp->mouse_cut_start;
	    FUNC7(s);
	    cut_buffer[0] = FUNC3(&scp->vtb, scp->mouse_cut_start);
	}
	cut_buffer[1] = '\0';
	scp->status |= MOUSE_CUTTING;
    	FUNC0(scp);	/* this is probably overkill XXX */
    }
}