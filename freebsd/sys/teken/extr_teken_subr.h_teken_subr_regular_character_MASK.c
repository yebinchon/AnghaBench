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
struct TYPE_12__ {int tp_col; int tp_row; } ;
struct TYPE_14__ {int tp_col; int tp_row; } ;
struct TYPE_11__ {int ts_end; } ;
struct TYPE_13__ {int t_stateflags; TYPE_2__ t_winsize; TYPE_4__ t_cursor; TYPE_1__ t_scrollreg; } ;
typedef  TYPE_3__ teken_t ;
typedef  TYPE_4__ teken_pos_t ;
typedef  int teken_char_t ;

/* Variables and functions */
 int TS_8BIT ; 
 int TS_AUTOWRAP ; 
 int TS_CONS25 ; 
 int TS_WRAPPED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(teken_t *t, teken_char_t c)
{
	int width;

	if (t->t_stateflags & TS_8BIT) {
		if (!(t->t_stateflags & TS_CONS25) && (c <= 0x1b || c == 0x7f))
			return;
		c = FUNC1(t, c);
		width = 1;
	} else {
		c = FUNC1(t, c);
		width = FUNC4(c);
		/* XXX: Don't process zero-width characters yet. */
		if (width <= 0)
			return;
	}

	if (t->t_stateflags & TS_CONS25) {
		FUNC2(t, &t->t_cursor, c, width);
		t->t_cursor.tp_col += width;

		if (t->t_cursor.tp_col >= t->t_winsize.tp_col) {
			if (t->t_cursor.tp_row == t->t_scrollreg.ts_end - 1) {
				/* Perform scrolling. */
				FUNC3(t, 1);
			} else {
				/* No scrolling needed. */
				if (t->t_cursor.tp_row <
				    t->t_winsize.tp_row - 1)
					t->t_cursor.tp_row++;
			}
			t->t_cursor.tp_col = 0;
		}
	} else if (t->t_stateflags & TS_AUTOWRAP &&
	    ((t->t_stateflags & TS_WRAPPED &&
	    t->t_cursor.tp_col + 1 == t->t_winsize.tp_col) ||
	    t->t_cursor.tp_col + width > t->t_winsize.tp_col)) {
		teken_pos_t tp;

		/*
		 * Perform line wrapping, if:
		 * - Autowrapping is enabled, and
		 *   - We're in the wrapped state at the last column, or
		 *   - The character to be printed does not fit anymore.
		 */
		if (t->t_cursor.tp_row == t->t_scrollreg.ts_end - 1) {
			/* Perform scrolling. */
			FUNC3(t, 1);
			tp.tp_row = t->t_scrollreg.ts_end - 1;
		} else {
			/* No scrolling needed. */
			tp.tp_row = t->t_cursor.tp_row + 1;
			if (tp.tp_row == t->t_winsize.tp_row) {
				/*
				 * Corner case: regular character
				 * outside scrolling region, but at the
				 * bottom of the screen.
				 */
				FUNC2(t, &t->t_cursor,
				    c, width);
				return;
			}
		}

		tp.tp_col = 0;
		FUNC2(t, &tp, c, width);

		t->t_cursor.tp_row = tp.tp_row;
		t->t_cursor.tp_col = width;
		t->t_stateflags &= ~TS_WRAPPED;
	} else {
		/* No line wrapping needed. */
		FUNC2(t, &t->t_cursor, c, width);
		t->t_cursor.tp_col += width;

		if (t->t_cursor.tp_col >= t->t_winsize.tp_col) {
			t->t_stateflags |= TS_WRAPPED;
			t->t_cursor.tp_col = t->t_winsize.tp_col - 1;
		} else {
			t->t_stateflags &= ~TS_WRAPPED;
		}
	}

	FUNC0(t);
}