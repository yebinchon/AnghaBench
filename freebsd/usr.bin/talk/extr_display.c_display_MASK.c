#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int kill; int cerase; int werase; int x_col; int /*<<< orphan*/  x_win; int /*<<< orphan*/  x_line; } ;
typedef  TYPE_1__ xwin_t ;
typedef  int wchar_t ;
struct TYPE_6__ {int x_col; int /*<<< orphan*/  x_win; int /*<<< orphan*/  x_line; } ;

/* Variables and functions */
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  curscr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__ his_win ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ my_win ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int*,int) ; 

void
FUNC13(xwin_t *win, wchar_t *wc)
{

	/*
	 * Alas, can't use variables in C switch statement.
	 * Workaround these 3 cases with goto.
	 */
	if (*wc == win->kill)
		goto kill;
	else if (*wc == win->cerase)
		goto cerase;
	else if (*wc == win->werase)
		goto werase;

	switch (*wc) {
	case L'\n':
	case L'\r':
		FUNC6(win->x_win, FUNC3(L'\n'));
		FUNC1(win->x_win, win->x_line, win->x_col);
		FUNC11(win->x_win);
		return;

	case 004:
		if (win == &my_win) {
			/* Ctrl-D clears the screen. */
			FUNC9(my_win.x_win);
			FUNC1(my_win.x_win, my_win.x_line, my_win.x_col);
			FUNC11(my_win.x_win);
			FUNC9(his_win.x_win);
			FUNC1(his_win.x_win, his_win.x_line, his_win.x_col);
			FUNC11(his_win.x_win);
		}
		return;

	/* Erase character. */
	case 010:	/* BS */
	case 0177:	/* DEL */
cerase:
		FUNC10(win->x_win, win->x_line, FUNC4(--win->x_col, 0));
		FUNC1(win->x_win, win->x_line, win->x_col);
		FUNC7(win->x_win, ' ');
		FUNC10(win->x_win, win->x_line, win->x_col);
		FUNC1(win->x_win, win->x_line, win->x_col);
		FUNC11(win->x_win);
		return;

	case 027:	/* ^W */
werase:
	    {
		/*
		 * On word erase search backwards until we find
		 * the beginning of a word or the beginning of
		 * the line.
		 */
		int endcol, xcol, c;

		endcol = win->x_col;
		xcol = endcol - 1;
		while (xcol >= 0) {
			c = FUNC5(win->x_win, win->x_line, xcol);
			if (c != ' ')
				break;
			xcol--;
		}
		while (xcol >= 0) {
			c = FUNC5(win->x_win, win->x_line, xcol);
			if (c == ' ')
				break;
			xcol--;
		}
		FUNC10(win->x_win, win->x_line, xcol + 1);
		for (int i = xcol + 1; i < endcol; i++)
			FUNC7(win->x_win, ' ');
		FUNC10(win->x_win, win->x_line, xcol + 1);
		FUNC1(win->x_win, win->x_line, win->x_col);
		FUNC11(win->x_win);
		return;
	    }

	case 025:	/* ^U */
kill:
		FUNC10(win->x_win, win->x_line, 0);
		FUNC8(win->x_win);
		FUNC1(win->x_win, win->x_line, win->x_col);
		FUNC11(win->x_win);
		return;

	case L'\f':
		if (win == &my_win)
			FUNC11(curscr);
		return;

	case L'\7':
		FUNC12(STDOUT_FILENO, wc, sizeof(*wc));
		return;
	}


	if (FUNC2(*wc) || *wc == L'\t')
		FUNC6(win->x_win, FUNC3(*wc));
	else
		FUNC0();

	FUNC1(win->x_win, win->x_line, win->x_col);
	FUNC11(win->x_win);
}