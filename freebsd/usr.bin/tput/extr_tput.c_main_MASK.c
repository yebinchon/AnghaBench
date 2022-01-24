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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (int,char**,char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char** FUNC7 (char const*,char*,char**) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC13 () ; 

int
FUNC14(int argc, char **argv)
{
	int ch, exitval, n;
	char *cptr, *term, buf[1024], tbuf[1024];
	const char *p;

	term = NULL;
	while ((ch = FUNC4(argc, argv, "T:")) != -1)
		switch(ch) {
		case 'T':
			term = optarg;
			break;
		case '?':
		default:
			FUNC13();
		}
	argc -= optind;
	argv += optind;

	if (argc < 1)
		FUNC13();

	if (!term && !(term = FUNC3("TERM")))
FUNC1(2, "no terminal type specified and no TERM environmental variable.");
	if (FUNC9(tbuf, term) != 1)
		FUNC0(3, "tgetent failure");
	for (exitval = 0; (p = *argv) != NULL; ++argv) {
		switch (*p) {
		case 'c':
			if (!FUNC8(p, "clear"))
				p = "cl";
			break;
		case 'i':
			if (!FUNC8(p, "init"))
				p = "is";
			break;
		case 'l':
			if (!FUNC8(p, "longname")) {
				FUNC6(tbuf);
				continue;
			}
			break;
		case 'r':
			if (!FUNC8(p, "reset"))
				p = "rs";
			break;
		}
		cptr = buf;
		if (FUNC12(p, &cptr))
			argv = FUNC7(p, buf, argv);
		else if ((n = FUNC11(p)) != -1)
			(void)FUNC5("%d\n", n);
		else
			exitval = !FUNC10(p);
	}
	FUNC2(exitval);
}