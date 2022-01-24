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
 int /*<<< orphan*/  FUNC0 (char**,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,char*,int*,int*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char*,char) ; 
 char* FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ using_vt ; 
 scalar_t__ verbose ; 
 scalar_t__ x11 ; 

__attribute__((used)) static void
FUNC8(const char *fnt)
{
	char *tmp, *p, *q, *cmd;
	char ch;
	int i;

	/* syscons test failed */
	if (x11)
		return;

	if (using_vt) {
		FUNC0(&cmd, "vidcontrol -f %s", fnt);
		FUNC7(cmd);
		FUNC2(cmd);
		return;
	}

	tmp = FUNC4(fnt);

	/* Extract font size */
	p = FUNC5(tmp, '-');
	if (p && p[1] != '\0') {
		p++;
		/* Remove any '.fnt' extension */
		if ((q = FUNC6(p, ".fnt")))
			*q = '\0';

		/*
		 * Check font size is valid, with no trailing characters
		 *  ('&ch' should not be matched)
		 */
		if (FUNC3(p, "%dx%d%c", &i, &i, &ch) != 2)
			FUNC1(stderr, "Which font size? %s\n", fnt);
		else {
			FUNC0(&cmd, "vidcontrol -f %s %s", p, fnt);
			if (verbose)
				FUNC1(stderr, "%s\n", cmd);
			FUNC7(cmd);
			FUNC2(cmd);
		}
	} else
		FUNC1(stderr, "Which font size? %s\n", fnt);

	FUNC2(tmp);
}