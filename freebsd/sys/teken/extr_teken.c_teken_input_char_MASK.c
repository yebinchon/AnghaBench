#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_20__ {scalar_t__ ts_begin; scalar_t__ ts_end; } ;
struct TYPE_19__ {scalar_t__ ts_end; scalar_t__ ts_begin; } ;
struct TYPE_18__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_17__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_22__ {int t_stateflags; int t_curscs; TYPE_5__ t_winsize; TYPE_4__ t_originreg; TYPE_3__ t_scrollreg; TYPE_2__ t_saved_cursor; TYPE_1__ t_cursor; int /*<<< orphan*/  (* t_nextstate ) (TYPE_6__*,int) ;} ;
typedef  TYPE_6__ teken_t ;
typedef  int teken_char_t ;

/* Variables and functions */
 int TS_CONS25 ; 
 int TS_INSTRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 

__attribute__((used)) static void
FUNC10(teken_t *t, teken_char_t c)
{

	/*
	 * There is no support for DCS and OSC.  Just discard strings
	 * until we receive characters that may indicate string
	 * termination.
	 */
	if (t->t_stateflags & TS_INSTRING) {
		switch (c) {
		case '\x1B':
			t->t_stateflags &= ~TS_INSTRING;
			break;
		case '\a':
			t->t_stateflags &= ~TS_INSTRING;
			return;
		default:
			return;
		}
	}

	switch (c) {
	case '\0':
		break;
	case '\a':
		FUNC5(t);
		break;
	case '\b':
		FUNC4(t);
		break;
	case '\n':
	case '\x0B':
		FUNC8(t);
		break;
	case '\x0C':
		FUNC9(t);
		break;
	case '\x0E':
		if (t->t_stateflags & TS_CONS25)
			t->t_nextstate(t, c);
		else
			t->t_curscs = 1;
		break;
	case '\x0F':
		if (t->t_stateflags & TS_CONS25)
			t->t_nextstate(t, c);
		else
			t->t_curscs = 0;
		break;
	case '\r':
		FUNC6(t);
		break;
	case '\t':
		FUNC7(t);
		break;
	default:
		t->t_nextstate(t, c);
		break;
	}

	/* Post-processing assertions. */
	FUNC3(t->t_cursor.tp_row >= t->t_originreg.ts_begin);
	FUNC3(t->t_cursor.tp_row < t->t_originreg.ts_end);
	FUNC3(t->t_cursor.tp_row < t->t_winsize.tp_row);
	FUNC3(t->t_cursor.tp_col < t->t_winsize.tp_col);
	FUNC3(t->t_saved_cursor.tp_row < t->t_winsize.tp_row);
	FUNC3(t->t_saved_cursor.tp_col < t->t_winsize.tp_col);
	FUNC3(t->t_scrollreg.ts_end <= t->t_winsize.tp_row);
	FUNC3(t->t_scrollreg.ts_begin < t->t_scrollreg.ts_end);
	/* Origin region has to be window size or the same as scrollreg. */
	FUNC3((t->t_originreg.ts_begin == t->t_scrollreg.ts_begin &&
	    t->t_originreg.ts_end == t->t_scrollreg.ts_end) ||
	    (t->t_originreg.ts_begin == 0 &&
	    t->t_originreg.ts_end == t->t_winsize.tp_row));
}