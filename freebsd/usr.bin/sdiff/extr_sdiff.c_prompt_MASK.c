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
 int FUNC0 (char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (char const) ; 
 int /*<<< orphan*/  outfp ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int sflag ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(const char *s1, const char *s2)
{
	char *cmd;

	/* Print command prompt. */
	FUNC7('%');

	/* Get user input. */
	for (; (cmd = FUNC8(stdin)); FUNC4(cmd)) {
		const char *p;

		/* Skip leading whitespace. */
		for (p = cmd; FUNC6(*p); ++p)
			;
		switch (*p) {
		case 'e':
			/* Skip `e'. */
			++p;
			if (FUNC0(p, s1, s2) == -1)
				goto USAGE;
			break;
		case 'l':
		case '1':
			/* Choose left column as-is. */
			if (s1 != NULL)
				FUNC3(outfp, "%s\n", s1);
			/* End of command parsing. */
			break;
		case 'q':
			goto QUIT;
		case 'r':
		case '2':
			/* Choose right column as-is. */
			if (s2 != NULL)
				FUNC3(outfp, "%s\n", s2);
			/* End of command parsing. */
			break;
		case 's':
			sflag = 1;
			goto PROMPT;
		case 'v':
			sflag = 0;
			/* FALLTHROUGH */
		default:
			/* Interactive usage help. */
USAGE:
			FUNC5();
PROMPT:
			FUNC7('%');

			/* Prompt user again. */
			continue;
		}
		FUNC4(cmd);
		return;
	}

	/*
	 * If there was no error, we received an EOF from stdin, so we
	 * should quit.
	 */
QUIT:
	FUNC2(outfp);
	FUNC1(0);
}