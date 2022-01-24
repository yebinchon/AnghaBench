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
struct sigaction {int /*<<< orphan*/  sa_mask; } ;
struct TYPE_4__ {int x_nlines; void* x_ncols; void* x_win; } ;
struct TYPE_3__ {int x_nlines; void* x_ncols; void* x_win; } ;

/* Variables and functions */
 void* COLS ; 
 int LINES ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIGWINCH ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (void*,char,char) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* current_state ; 
 int curses_initialized ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 TYPE_2__ his_win ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 void* line_win ; 
 TYPE_1__ my_win ; 
 void* FUNC6 (int,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sig_sent ; 
 int /*<<< orphan*/  sig_winch ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (void*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 

void
FUNC16(void)
{
	struct sigaction sa;

	if (FUNC5() == NULL)
		FUNC3(1, "Terminal type unset or lacking necessary features.");
	(void) FUNC10(SIGTSTP, (struct sigaction *)0, &sa);
	FUNC11(&sa.sa_mask, SIGALRM);
	(void) FUNC10(SIGTSTP, &sa, (struct sigaction *)0);
	curses_initialized = 1;
	FUNC1();
	FUNC8();
	FUNC7();
	FUNC2();
	FUNC12(SIGINT, sig_sent);
	FUNC12(SIGPIPE, sig_sent);
	FUNC12(SIGWINCH, sig_winch);
	/* curses takes care of ^Z */
	my_win.x_nlines = LINES / 2;
	my_win.x_ncols = COLS;
	my_win.x_win = FUNC6(my_win.x_nlines, my_win.x_ncols, 0, 0);
	FUNC4(my_win.x_win, TRUE);
	FUNC9(my_win.x_win, TRUE);
	FUNC13(my_win.x_win);

	his_win.x_nlines = LINES / 2 - 1;
	his_win.x_ncols = COLS;
	his_win.x_win = FUNC6(his_win.x_nlines, his_win.x_ncols,
	    my_win.x_nlines+1, 0);
	FUNC4(my_win.x_win, TRUE);
	FUNC9(his_win.x_win, TRUE);
	FUNC13(his_win.x_win);

	line_win = FUNC6(1, COLS, my_win.x_nlines, 0);
#if defined(hline) || defined(whline) || defined(NCURSES_VERSION)
	whline(line_win, 0, COLS);
#else
	FUNC0(line_win, '-', '-');
#endif
	FUNC15(line_win);
	/* let them know we are working on it */
	current_state = "No connection yet";
}