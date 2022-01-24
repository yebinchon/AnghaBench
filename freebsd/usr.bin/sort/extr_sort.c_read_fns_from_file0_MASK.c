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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t argc_from_file0 ; 
 char** argv_from_file0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char**,size_t*,char,int /*<<< orphan*/ *) ; 
 char** FUNC6 (char**,size_t) ; 

__attribute__((used)) static void
FUNC7(const char *fn)
{
	FILE *f;
	char *line = NULL;
	size_t linesize = 0;
	ssize_t linelen;

	if (fn == NULL)
		return;

	f = FUNC3(fn, "r");
	if (f == NULL)
		FUNC1(2, "%s", fn);

	while ((linelen = FUNC5(&line, &linesize, '\0', f)) != -1) {
		if (*line != '\0') {
			if (argc_from_file0 == (size_t) - 1)
				argc_from_file0 = 0;
			++argc_from_file0;
			argv_from_file0 = FUNC6(argv_from_file0,
			    argc_from_file0 * sizeof(char *));
			if (argv_from_file0 == NULL)
				FUNC1(2, NULL);
			argv_from_file0[argc_from_file0 - 1] = line;
		} else {
			FUNC4(line);
		}
		line = NULL;
		linesize = 0;
	}
	if (FUNC2(f))
		FUNC1(2, "%s: getdelim", fn);

	FUNC0(f, fn);
}