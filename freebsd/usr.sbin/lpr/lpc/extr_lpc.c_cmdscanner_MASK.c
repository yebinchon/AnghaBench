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
struct cmd {int c_opts; int /*<<< orphan*/  (* c_handler ) (scalar_t__,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * c_generic; } ;
typedef  int /*<<< orphan*/  History ;
typedef  int /*<<< orphan*/  HistEvent ;
typedef  int /*<<< orphan*/  EditLine ;

/* Variables and functions */
 int /*<<< orphan*/  EL_EDITOR ; 
 int /*<<< orphan*/  EL_HIST ; 
 int /*<<< orphan*/  EL_PROMPT ; 
 int /*<<< orphan*/  EL_SIGNAL ; 
 int /*<<< orphan*/  H_ENTER ; 
 int /*<<< orphan*/  H_SETSIZE ; 
 int LPC_PRIVCMD ; 
 int /*<<< orphan*/  LPR_OPER ; 
 scalar_t__ MAX_CMDLINE ; 
 size_t FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__* cmdline ; 
 char* FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,char const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ fromatty ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  (*) (scalar_t__,int /*<<< orphan*/ *),scalar_t__,int /*<<< orphan*/ *) ; 
 struct cmd* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int lpc_prompt ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ margc ; 
 int /*<<< orphan*/ * margv ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC19(void)
{
	register struct cmd *c;
	static EditLine *el;
	static History *hist;
	HistEvent he;
	size_t len;
	int num;
	const char *bp;

	num = 0;
	bp = NULL;
	el = NULL;
	hist = NULL;
	for (;;) {
		if (fromatty) {
			if (!el) {
				el = FUNC3("lpc", stdin, stdout, stderr);
				hist = FUNC12();
				FUNC11(hist, &he, H_SETSIZE, 100);
				FUNC5(el, EL_HIST, history, hist);
				FUNC5(el, EL_EDITOR, "emacs");
				FUNC5(el, EL_PROMPT, lpc_prompt);
				FUNC5(el, EL_SIGNAL, 1);
				FUNC6(el, NULL);
				/*
				 * EditLine init may call 'cgetset()' to set a
				 * capability-db meant for termcap (eg: to set
				 * terminal type 'xterm').  Reset that now, or
				 * that same db-information will be used for
				 * printcap (giving us an "xterm" printer, with
				 * all kinds of invalid capabilities...).
				 */
				FUNC1(NULL);
			}
			if ((bp = FUNC2(el, &num)) == NULL || num == 0)
				FUNC17(0, NULL);

			len = FUNC0(MAX_CMDLINE - 1, num);
			FUNC15(cmdline, bp, len);
			cmdline[len] = 0; 
			FUNC11(hist, &he, H_ENTER, bp);

		} else {
			if (FUNC7(cmdline, MAX_CMDLINE, stdin) == NULL)
				FUNC17(0, NULL);
			if (cmdline[0] == 0 || cmdline[0] == '\n')
				break;
		}

		FUNC14();
		if (margc == 0)
			continue;
		if (el != NULL && FUNC4(el, margc, (const char **)margv) != -1)
			continue;

		c = FUNC9(margv[0]);
		if (c == (struct cmd *)-1) {
			FUNC16("?Ambiguous command\n");
			continue;
		}
		if (c == NULL) {
			FUNC16("?Invalid command\n");
			continue;
		}
		if ((c->c_opts & LPC_PRIVCMD) && FUNC10() &&
		    FUNC13(LPR_OPER) == 0) {
			FUNC16("?Privileged command\n");
			continue;
		}

		/*
		 * Two different commands might have the same generic rtn
		 * (eg: "clean" and "tclean"), and just use different
		 * handler routines for distinct command-setup.  The handler
		 * routine might also be set on a generic routine for
		 * initial parameter processing.
		 */
		if (c->c_generic != NULL)
			FUNC8(c->c_generic, c->c_opts, c->c_handler,
			    margc, margv);
		else
			(*c->c_handler)(margc, margv);
	}
}