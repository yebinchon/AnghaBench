#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int Columns ; 
 int Lines ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  outc ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (char*,char**) ; 
 char* FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,int /*<<< orphan*/ ) ; 

int
FUNC5(void)
{
	int c;
	char *capsp, *clear_tabs;
	char *set_column, *set_pos, *Set_tab;
	char caps[1024];
	const char *tg_out;

	capsp = caps;
	Set_tab = FUNC2("st", &capsp);

	if (Set_tab && (clear_tabs = FUNC2("ct", &capsp))) {
		(void)FUNC1('\r', stderr);	/* Force to left margin. */
		FUNC4(clear_tabs, 0, outc);
	}

	set_column = FUNC2("ch", &capsp);
	set_pos = set_column ? NULL : FUNC2("cm", &capsp);

	if (Set_tab) {
		for (c = 8; c < Columns; c += 8) {
			/*
			 * Get to the right column.  "OOPS" is returned by
			 * tgoto() if it can't do the job.  (*snarl*)
			 */
			tg_out = "OOPS";
			if (set_column)
				tg_out = FUNC3(set_column, 0, c);
			if (*tg_out == 'O' && set_pos)
				tg_out = FUNC3(set_pos, c, Lines - 1);
			if (*tg_out != 'O')
				FUNC4(tg_out, 1, outc);
			else
				(void)FUNC0(stderr, "%s", "        ");
			/* Set the tab. */
			FUNC4(Set_tab, 0, outc);
		}
		FUNC1('\r', stderr);
		return (1);
	}
	return (0);
}