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
typedef  int /*<<< orphan*/  stae ;

/* Variables and functions */
 char EOS ; 
 int /*<<< orphan*/  FORMATTYPE ; 
 int /*<<< orphan*/  INITSTACKMAX ; 
 int /*<<< orphan*/  MAXOUT ; 
 int /*<<< orphan*/  SIGINT ; 
 scalar_t__ SIG_IGN ; 
 int /*<<< orphan*/  STACKMAX ; 
 scalar_t__ active ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * bbase ; 
 int /*<<< orphan*/  bp ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  bufbase ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int error_warns ; 
 int exit_code ; 
 int fatal_warns ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,char*) ; 
 scalar_t__ fp ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,char**,char*) ; 
 scalar_t__ ilevel ; 
 scalar_t__ infile ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * m4wraps ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int maxout ; 
 int mimic_gnu ; 
 int /*<<< orphan*/  mstack ; 
 scalar_t__ onintr ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/ ** outfile ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int prefix_builtins ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 int sp ; 
 int /*<<< orphan*/  sstack ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ stdout ; 
 int synch_lines ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int wrapindex ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

int
FUNC24(int argc, char *argv[])
{
	int c;
	int n;
	char *p;

	if (FUNC19(SIGINT, SIG_IGN) != SIG_IGN)
		FUNC19(SIGINT, onintr);

	FUNC7();
	FUNC9();
	STACKMAX = INITSTACKMAX;

	mstack = FUNC23(NULL, STACKMAX, sizeof(stae), NULL);
	sstack = FUNC22(STACKMAX, NULL);

	maxout = 0;
	outfile = NULL;
	FUNC15(MAXOUT);

	while ((c = FUNC6(argc, argv, "gst:d:D:EU:o:I:P")) != -1)
		switch(c) {

		case 'D':               /* define something..*/
			for (p = optarg; *p; p++)
				if (*p == '=')
					break;
			if (*p)
				*p++ = EOS;
			FUNC1(optarg, p);
			break;
		case 'E':               /* like GNU m4 1.4.9+ */
			if (error_warns == 0)
				error_warns = 1;
			else
				fatal_warns = 1;
			break;
		case 'I':
			FUNC0(optarg);
			break;
		case 'P':
			prefix_builtins = 1;
			break;
		case 'U':               /* undefine...       */
			FUNC11(optarg);
			break;
		case 'g':
			mimic_gnu = 1;
			break;
		case 'd':
			FUNC17(optarg);
			break;
		case 's':
			synch_lines = 1;
			break;
		case 't':
			FUNC12(optarg, 1);
			break;
		case 'o':
			FUNC20(optarg);
                        break;
		case '?':
			FUNC21();
		}

        argc -= optind;
        argv += optind;

	FUNC8();
	if (mimic_gnu)
		FUNC18("format", FORMATTYPE);

	active = stdout;		/* default active output     */
	bbase[0] = bufbase;
        if (!argc) {
		sp = -1;		/* stack pointer initialized */
		fp = 0;			/* frame pointer initialized */
		FUNC16(infile+0, stdin, "stdin");
					/* default input (naturally) */
		FUNC10();
	} else
		for (; argc--; ++argv) {
			p = *argv;
			if (p[0] == '-' && p[1] == EOS)
				FUNC16(infile, stdin, "stdin");
			else if (FUNC4(infile, p) == NULL)
				FUNC2(1, "%s", p);
			sp = -1;
			fp = 0;
			FUNC10();
			FUNC14(infile);
		}

	if (wrapindex) {
		int i;

		ilevel = 0;		/* in case m4wrap includes.. */
		bufbase = bp = buf;	/* use the entire buffer   */
		if (mimic_gnu) {
			while (wrapindex != 0) {
				for (i = 0; i < wrapindex; i++)
					FUNC13(m4wraps[i]);
				wrapindex =0;
				FUNC10();
			}
		} else {
			for (i = 0; i < wrapindex; i++) {
				FUNC13(m4wraps[i]);
				FUNC10();
			}
		}
	}

	if (active != stdout)
		active = stdout;	/* reset output just in case */
	for (n = 1; n < maxout; n++)	/* default wrap-up: undivert */
		if (outfile[n] != NULL)
			FUNC5(n);
					/* remove bitbucket if used  */
	if (outfile[0] != NULL) {
		(void) FUNC3(outfile[0]);
	}

	return exit_code;
}