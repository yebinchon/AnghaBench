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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  History ;
typedef  int /*<<< orphan*/  HistEvent ;
typedef  int /*<<< orphan*/  EditLine ;

/* Variables and functions */
 int CMD_QUIT ; 
 int /*<<< orphan*/  EL_EDITOR ; 
 int /*<<< orphan*/  EL_HIST ; 
 int /*<<< orphan*/  EL_PROMPT ; 
 int /*<<< orphan*/  EL_SIGNAL ; 
 int /*<<< orphan*/  H_ENTER ; 
 int /*<<< orphan*/  H_SETSIZE ; 
 int MAXLINE ; 
 int cdcontrol_prompt ; 
 char* FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 char* FUNC9 (char*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ verbose ; 

__attribute__((used)) static char *
FUNC10(int *cmd)
{
#define MAXLINE 80
	static EditLine *el = NULL;
	static History *hist = NULL;
	HistEvent he;
	static char buf[MAXLINE];
	int num = 0;
	int len;
	const char *bp = NULL;
	char *p;

	do {
		if (verbose) {
			if (!el) {
				el = FUNC1("cdcontrol", stdin, stdout,
				    stderr);
				hist = FUNC7();
				FUNC6(hist, &he, H_SETSIZE, 100);
				FUNC2(el, EL_HIST, history, hist);
				FUNC2(el, EL_EDITOR, "emacs");
				FUNC2(el, EL_PROMPT, cdcontrol_prompt);
				FUNC2(el, EL_SIGNAL, 1);
				FUNC3(el, NULL);
			}
			if ((bp = FUNC0(el, &num)) == NULL || num == 0) {
				*cmd = CMD_QUIT;
				FUNC5 (stderr, "\r\n");
				return (0);
			}

			len = (num > MAXLINE) ? MAXLINE : num;
			FUNC8(buf, bp, len);
			buf[len] = 0;
			FUNC6(hist, &he, H_ENTER, bp);
#undef MAXLINE

		} else {
			if (! FUNC4 (buf, sizeof (buf), stdin)) {
				*cmd = CMD_QUIT;
				FUNC5 (stderr, "\r\n");
				return (0);
			}
		}
		p = FUNC9 (buf, cmd);
	} while (! p);
	return (p);
}