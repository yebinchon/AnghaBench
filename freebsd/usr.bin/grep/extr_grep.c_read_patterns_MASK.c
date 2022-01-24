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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC9 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC10 (char const*,char*) ; 

__attribute__((used)) static void
FUNC11(const char *fn)
{
	struct stat st;
	FILE *f;
	char *line;
	size_t len;
	ssize_t rlen;

	if (FUNC10(fn, "-") == 0)
		f = stdin;
	else if ((f = FUNC6(fn, "r")) == NULL)
		FUNC2(2, "%s", fn);
	if ((FUNC8(FUNC5(f), &st) == -1) || (FUNC0(st.st_mode))) {
		FUNC3(f);
		return;
	}
	len = 0;
	line = NULL;
	while ((rlen = FUNC9(&line, &len, f)) != -1) {
		if (line[0] == '\0')
			continue;
		FUNC1(line, line[0] == '\n' ? 0 : (size_t)rlen);
	}

	FUNC7(line);
	if (FUNC4(f))
		FUNC2(2, "%s", fn);
	if (FUNC10(fn, "-") != 0)
		FUNC3(f);
}