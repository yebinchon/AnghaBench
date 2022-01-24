#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_16__ ;

/* Type definitions */
struct TYPE_19__ {int flags; } ;
struct TYPE_21__ {int status; int mouse_pos; int xsize; int start; int end; int cursor_pos; int cursor_oldpos; int ysize; int mouse_cut_end; int mouse_cut_start; TYPE_16__* sc; TYPE_2__* rndr; TYPE_1__ curs_attr; } ;
typedef  TYPE_3__ scr_stat ;
struct TYPE_20__ {int /*<<< orphan*/  (* blink_cursor ) (TYPE_3__*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* draw ) (TYPE_3__*,int,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_18__ {int flags; } ;

/* Variables and functions */
 int CONS_BLINK_CURSOR ; 
 int CURSOR_ENABLED ; 
 int /*<<< orphan*/  FALSE ; 
 int MOUSE_HIDDEN ; 
 int MOUSE_MOVED ; 
 int MOUSE_VISIBLE ; 
 int SC_MOUSE_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_16__*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC15(scr_stat *scp, int show_cursor)
{
    int start;
    int end;
    int s;
    int e;

    /* assert(scp == scp->sc->cur_scp) */

    FUNC0(scp->sc);

#ifndef SC_NO_CUTPASTE
    /* remove the previous mouse pointer image if necessary */
    if (scp->status & MOUSE_VISIBLE) {
	s = scp->mouse_pos;
	e = scp->mouse_pos + scp->xsize + 1;
	if ((scp->status & (MOUSE_MOVED | MOUSE_HIDDEN))
	    || FUNC2(&s, &e, scp->start, scp->end)
	    || ((scp->status & CURSOR_ENABLED) && 
		(scp->cursor_pos != scp->cursor_oldpos) &&
		(FUNC2(&s, &e, scp->cursor_pos, scp->cursor_pos)
		 || FUNC2(&s, &e, scp->cursor_oldpos, scp->cursor_oldpos)))) {
	    FUNC8(scp);
	    if (scp->end >= scp->xsize*scp->ysize)
		scp->end = scp->xsize*scp->ysize - 1;
	}
    }
#endif /* !SC_NO_CUTPASTE */

#if 1
    /* debug: XXX */
    if (scp->end >= scp->xsize*scp->ysize) {
	FUNC3("scrn_update(): scp->end %d > size_of_screen!!\n", scp->end);
	scp->end = scp->xsize*scp->ysize - 1;
    }
    if (scp->start < 0) {
	FUNC3("scrn_update(): scp->start %d < 0\n", scp->start);
	scp->start = 0;
    }
#endif

    /* update screen image */
    if (scp->start <= scp->end)  {
	if (scp->mouse_cut_end >= 0) {
	    /* there is a marked region for cut & paste */
	    if (scp->mouse_cut_start <= scp->mouse_cut_end) {
		start = scp->mouse_cut_start;
		end = scp->mouse_cut_end;
	    } else {
		start = scp->mouse_cut_end;
		end = scp->mouse_cut_start - 1;
	    }
	    s = start;
	    e = end;
	    /* does the cut-mark region overlap with the update region? */
	    if (FUNC2(&s, &e, scp->start, scp->end)) {
		(*scp->rndr->draw)(scp, s, e - s + 1, TRUE);
		s = 0;
		e = start - 1;
		if (FUNC2(&s, &e, scp->start, scp->end))
		    (*scp->rndr->draw)(scp, s, e - s + 1, FALSE);
		s = end + 1;
		e = scp->xsize*scp->ysize - 1;
		if (FUNC2(&s, &e, scp->start, scp->end))
		    (*scp->rndr->draw)(scp, s, e - s + 1, FALSE);
	    } else {
		(*scp->rndr->draw)(scp, scp->start,
				   scp->end - scp->start + 1, FALSE);
	    }
	} else {
	    (*scp->rndr->draw)(scp, scp->start,
			       scp->end - scp->start + 1, FALSE);
	}
    }

    /* we are not to show the cursor and the mouse pointer... */
    if (!show_cursor) {
        scp->end = 0;
        scp->start = scp->xsize*scp->ysize - 1;
	FUNC1(scp->sc);
	return;
    }

    /* update cursor image */
    if (scp->status & CURSOR_ENABLED) {
	s = scp->start;
	e = scp->end;
        /* did cursor move since last time ? */
        if (scp->cursor_pos != scp->cursor_oldpos) {
            /* do we need to remove old cursor image ? */
            if (!FUNC2(&s, &e, scp->cursor_oldpos, scp->cursor_oldpos))
                FUNC7(scp);
            FUNC4(scp);
        } else {
            if (FUNC2(&s, &e, scp->cursor_pos, scp->cursor_pos))
		/* cursor didn't move, but has been overwritten */
		FUNC4(scp);
	    else if (scp->curs_attr.flags & CONS_BLINK_CURSOR)
		/* if it's a blinking cursor, update it */
		(*scp->rndr->blink_cursor)(scp, scp->cursor_pos,
					   FUNC6(scp,
					       scp->cursor_pos));
        }
    }

#ifndef SC_NO_CUTPASTE
    /* update "pseudo" mouse pointer image */
    if (scp->sc->flags & SC_MOUSE_ENABLED) {
	if (!(scp->status & (MOUSE_VISIBLE | MOUSE_HIDDEN))) {
	    scp->status &= ~MOUSE_MOVED;
	    FUNC5(scp);
	}
    }
#endif /* SC_NO_CUTPASTE */

    scp->end = 0;
    scp->start = scp->xsize*scp->ysize - 1;

    FUNC1(scp->sc);
}