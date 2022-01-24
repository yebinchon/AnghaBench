#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct winsize {int ws_row; scalar_t__ ws_col; } ;
struct TYPE_4__ {int x_nlines; scalar_t__ x_ncols; int /*<<< orphan*/  x_win; } ;
struct TYPE_3__ {int x_nlines; scalar_t__ x_ncols; int /*<<< orphan*/  x_win; } ;

/* Variables and functions */
 scalar_t__ COLS ; 
 int LINES ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ his_win ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 
 int /*<<< orphan*/  line_win ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ my_win ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,scalar_t__) ; 

void
FUNC9(void)
{
	struct winsize ws;

	if (FUNC2(STDIN_FILENO, TIOCGWINSZ, &ws) < 0 ||
	    (ws.ws_row == LINES && ws.ws_col == COLS))
		return;

	/* Update curses' internal state with new window size. */
	FUNC4(ws.ws_row, ws.ws_col);

	/*
	 * Resize each window but wait to refresh the screen until
	 * everything has been drawn so the cursor is in the right spot.
	 */
	my_win.x_nlines = LINES / 2;
	my_win.x_ncols = COLS;
	FUNC8(my_win.x_win, my_win.x_nlines, my_win.x_ncols);
	FUNC3(my_win.x_win, 0, 0);
	FUNC1(my_win.x_win, TRUE);

	his_win.x_nlines = LINES / 2 - 1;
	his_win.x_ncols = COLS;
	FUNC8(his_win.x_win, his_win.x_nlines, his_win.x_ncols);
	FUNC3(his_win.x_win, my_win.x_nlines + 1, 0);
	FUNC1(his_win.x_win, TRUE);

	FUNC8(line_win, 1, COLS);
	FUNC3(line_win, my_win.x_nlines, 0);
#if defined(NCURSES_VERSION) || defined(whline)
	whline(line_win, '-', COLS);
#else
	FUNC6(line_win, my_win.x_nlines, 0);
	FUNC0(line_win, '-', '-');
#endif

	/* Now redraw the screen. */
	FUNC7(his_win.x_win);
	FUNC7(line_win);
	FUNC7(my_win.x_win);
}