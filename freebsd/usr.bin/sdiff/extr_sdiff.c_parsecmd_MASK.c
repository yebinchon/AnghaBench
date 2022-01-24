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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  INT_MAX ; 
 scalar_t__ Iflag ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 size_t file1ln ; 
 size_t file2ln ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ lflag ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 size_t FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(FILE *diffpipe, FILE *file1, FILE *file2)
{
	size_t file1start, file1end, file2start, file2end, n;
	/* ed command line and pointer to characters in line */
	char *line, *p, *q;
	const char *errstr;
	char c, cmd;

	/* Read ed command. */
	if (!(line = FUNC9(diffpipe)))
		return (EOF);

	p = line;
	/* Go to character after line number. */
	while (FUNC3(*p))
		++p;
	c = *p;
	*p++ = 0;
	file1start = FUNC8(line, 0, INT_MAX, &errstr);
	if (errstr)
		FUNC1(2, "file1 start is %s: %s", errstr, line);

	/* A range is specified for file1. */
	if (c == ',') {
		q = p;
		/* Go to character after file2end. */
		while (FUNC3(*p))
			++p;
		c = *p;
		*p++ = 0;
		file1end = FUNC8(q, 0, INT_MAX, &errstr);
		if (errstr)
			FUNC1(2, "file1 end is %s: %s", errstr, line);
		if (file1start > file1end)
			FUNC1(2, "invalid line range in file1: %s", line);
	} else
		file1end = file1start;

	cmd = c;
	/* Check that cmd is valid. */
	if (!(cmd == 'a' || cmd == 'c' || cmd == 'd'))
		FUNC1(2, "ed command not recognized: %c: %s", cmd, line);

	q = p;
	/* Go to character after line number. */
	while (FUNC3(*p))
		++p;
	c = *p;
	*p++ = 0;
	file2start = FUNC8(q, 0, INT_MAX, &errstr);
	if (errstr)
		FUNC1(2, "file2 start is %s: %s", errstr, line);

	/*
	 * There should either be a comma signifying a second line
	 * number or the line should just end here.
	 */
	if (c != ',' && c != '\0')
		FUNC1(2, "invalid line range in file2: %c: %s", c, line);

	if (c == ',') {

		file2end = FUNC8(p, 0, INT_MAX, &errstr);
		if (errstr)
			FUNC1(2, "file2 end is %s: %s", errstr, line);
		if (file2start >= file2end)
			FUNC1(2, "invalid line range in file2: %s", line);
	} else
		file2end = file2start;

	/* Appends happen _after_ stated line. */
	if (cmd == 'a') {
		if (file1start != file1end)
			FUNC1(2, "append cannot have a file1 range: %s",
			    line);
		if (file1start == SIZE_MAX)
			FUNC1(2, "file1 line range too high: %s", line);
		file1start = ++file1end;
	}
	/*
	 * I'm not sure what the deal is with the line numbers for
	 * deletes, though.
	 */
	else if (cmd == 'd') {
		if (file2start != file2end)
			FUNC1(2, "delete cannot have a file2 range: %s",
			    line);
		if (file2start == SIZE_MAX)
			FUNC1(2, "file2 line range too high: %s", line);
		file2start = ++file2end;
	}

	/*
	 * Continue reading file1 and file2 until we reach line numbers
	 * specified by diff.  Should only happen with -I flag.
	 */
	for (; file1ln < file1start && file2ln < file2start;
	    ++file1ln, ++file2ln) {
		char *s1, *s2;

		if (!(s1 = FUNC9(file1)))
			FUNC1(2, "file1 shorter than expected");
		if (!(s2 = FUNC9(file2)))
			FUNC1(2, "file2 shorter than expected");

		/* If the -l flag was specified, print only left column. */
		if (lflag) {
			FUNC2(s2);
			/*
			 * XXX - If -l and -I are both specified, all
			 * unchanged or ignored lines are shown with a
			 * `(' divider.  This matches GNU sdiff, but I
			 * believe it is a bug.  Just check out:
			 * gsdiff -l -I '^$' samefile samefile.
			 */
			if (Iflag)
				FUNC0(s1, '(', NULL);
			else
				FUNC0(s1, ' ', NULL);
		} else
			FUNC0(s1, ' ', s2);
	}
	/* Ignore deleted lines. */
	for (; file1ln < file1start; ++file1ln) {
		char *s;

		if (!(s = FUNC9(file1)))
			FUNC1(2, "file1 shorter than expected");

		FUNC0(s, '(', NULL);
	}
	/* Ignore added lines. */
	for (; file2ln < file2start; ++file2ln) {
		char *s;

		if (!(s = FUNC9(file2)))
			FUNC1(2, "file2 shorter than expected");

		/* If -l flag was given, don't print right column. */
		if (lflag)
			FUNC2(s);
		else
			FUNC0(NULL, ')', s);
	}

	/* Process unmodified or skipped lines. */
	FUNC7();

	switch (cmd) {
	case 'a':
		FUNC4(file2, file2end);
		n = file2end - file2start + 1;
		break;
	case 'c':
		FUNC5(file1, file1end, file2, file2end);
		n = file1end - file1start + 1 + 1 + file2end - file2start + 1;
		break;
	case 'd':
		FUNC6(file1, file1end);
		n = file1end - file1start + 1;
		break;
	default:
		FUNC1(2, "invalid diff command: %c: %s", cmd, line);
	}
	FUNC2(line);

	/* Skip to next ed line. */
	while (n--) {
		if (!(line = FUNC9(diffpipe)))
			FUNC1(2, "diff ended early");
		FUNC2(line);
	}

	return (0);
}