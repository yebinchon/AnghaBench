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
typedef  int /*<<< orphan*/  History ;
typedef  int /*<<< orphan*/  HistEvent ;
typedef  int /*<<< orphan*/  EditLine ;

/* Variables and functions */
 int /*<<< orphan*/  EL_EDITOR ; 
 int /*<<< orphan*/  EL_HIST ; 
 int /*<<< orphan*/  EL_PROMPT ; 
 int /*<<< orphan*/  EL_SIGNAL ; 
 int /*<<< orphan*/  H_SETSIZE ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int acting_as_client ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int command_prompt ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  intr ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mode ; 
 int peer ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,char**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC15 (char*,char*,int) ; 
 int /*<<< orphan*/  toplevel ; 
 int /*<<< orphan*/  txrx_error ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int
FUNC17(int argc, char *argv[])
{
	HistEvent he;
	static EditLine *el;
	static History *hist;
	bool interactive;

	acting_as_client = 1;
	peer = -1;
	FUNC14(mode, "octet");
	FUNC13(SIGINT, intr);

	interactive = FUNC9(STDIN_FILENO);
	if (interactive) {
		el = FUNC1("tftp", stdin, stdout, stderr);
		hist = FUNC7();
		FUNC6(hist, &he, H_SETSIZE, 100);
		FUNC3(el, EL_HIST, history, hist);
		FUNC3(el, EL_EDITOR, "emacs");
		FUNC3(el, EL_PROMPT, command_prompt);
		FUNC3(el, EL_SIGNAL, 1);
		FUNC4(el, NULL);
	}

	if (argc > 1) {
		if (FUNC11(toplevel) != 0)
			FUNC5(txrx_error);

		if (FUNC15(argv[1], "tftp://", 7) == 0) {
			FUNC16(argv[1]);
			FUNC5(txrx_error);
		}

		FUNC12(argc, argv);
	}

	if (FUNC11(toplevel) != 0) {
		if (interactive)
			FUNC2(el);
		(void)FUNC10('\n');
	}

	FUNC8();
	FUNC0(interactive, el, hist, &he);
}