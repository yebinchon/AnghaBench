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
 int MAXNUM ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ lflag ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (int,char*) ; 

__attribute__((used)) static void
FUNC7(char *line)
{
	int flen, len, rval;
	char *p, *fraction;

	flen = 0;
	fraction = NULL;
	for (p = line; *p != '\0' && *p != '\n'; ++p) {
		if (FUNC1(*p)) {
			if (p == line) {
				++line;
				continue;
			}
			goto badnum;
		}
		if (FUNC2(*p))
			continue;
		switch (*p) {
		case '.':
			if (fraction != NULL)
				goto badnum;
			fraction = p + 1;
			*p = '\0';
			break;
		case '-':
			if (p == line)
				break;
			/* FALLTHROUGH */
		default:
badnum:			FUNC0(1, "illegal number: %s", line);
			break;
		}
	}
	*p = '\0';

	if ((len = FUNC5(line)) > MAXNUM ||
	    (fraction != NULL && ((flen = FUNC5(fraction)) > MAXNUM)))
		FUNC0(1, "number too large, max %d digits.", MAXNUM);

	if (*line == '-') {
		(void)FUNC4("minus%s", lflag ? " " : "\n");
		++line;
		--len;
	}

	rval = len > 0 ? FUNC6(len, line) : 0;
	if (fraction != NULL && flen != 0)
		for (p = fraction; *p != '\0'; ++p)
			if (*p != '0') {
				if (rval)
					(void)FUNC4("%sand%s",
					    lflag ? " " : "",
					    lflag ? " " : "\n");
				if (FUNC6(flen, fraction)) {
					if (lflag)
						(void)FUNC4(" ");
					FUNC3(flen);
					rval = 1;
				}
				break;
			}
	if (!rval)
		(void)FUNC4("zero%s", lflag ? "" : ".\n");
	if (lflag)
		(void)FUNC4("\n");
}