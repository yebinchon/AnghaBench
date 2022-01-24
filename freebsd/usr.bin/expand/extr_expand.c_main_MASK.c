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
typedef  int wint_t ;

/* Variables and functions */
 int /*<<< orphan*/  LC_CTYPE ; 
 int WEOF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (unsigned char) ; 
 int nstops ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stdin ; 
 int* tabstops ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int FUNC11 (int) ; 

int
FUNC12(int argc, char *argv[])
{
	const char *curfile;
	wint_t wc;
	int c, column;
	int n;
	int rval;
	int width;

	FUNC8(LC_CTYPE, "");

	/* handle obsolete syntax */
	while (argc > 1 && argv[1][0] == '-' &&
	    FUNC6((unsigned char)argv[1][1])) {
		FUNC4(&argv[1][1]);
		argc--; argv++;
	}

	while ((c = FUNC3 (argc, argv, "t:")) != -1) {
		switch (c) {
		case 't':
			FUNC4(optarg);
			break;
		case '?':
		default:
			FUNC9();
			/* NOTREACHED */
		}
	}
	argc -= optind;
	argv += optind;

	rval = 0;
	do {
		if (argc > 0) {
			if (FUNC2(argv[0], "r", stdin) == NULL) {
				FUNC10("%s", argv[0]);
				rval = 1;
				argc--, argv++;
				continue;
			}
			curfile = argv[0];
			argc--, argv++;
		} else
			curfile = "stdin";
		column = 0;
		while ((wc = FUNC5()) != WEOF) {
			switch (wc) {
			case '\t':
				if (nstops == 0) {
					do {
						FUNC7(' ');
						column++;
					} while (column & 07);
					continue;
				}
				if (nstops == 1) {
					do {
						FUNC7(' ');
						column++;
					} while (((column - 1) % tabstops[0]) != (tabstops[0] - 1));
					continue;
				}
				for (n = 0; n < nstops; n++)
					if (tabstops[n] > column)
						break;
				if (n == nstops) {
					FUNC7(' ');
					column++;
					continue;
				}
				while (column < tabstops[n]) {
					FUNC7(' ');
					column++;
				}
				continue;

			case '\b':
				if (column)
					column--;
				FUNC7('\b');
				continue;

			default:
				FUNC7(wc);
				if ((width = FUNC11(wc)) > 0)
					column += width;
				continue;

			case '\n':
				FUNC7(wc);
				column = 0;
				continue;
			}
		}
		if (FUNC1(stdin)) {
			FUNC10("%s", curfile);
			rval = 1;
		}
	} while (argc > 0);
	FUNC0(rval);
}