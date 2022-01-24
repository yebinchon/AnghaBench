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
 int /*<<< orphan*/ * FORTDIR ; 
 int /*<<< orphan*/ * Fortune_path ; 
 char** Fortune_path_arr ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (char*,char*) ; 

__attribute__((used)) static void
FUNC8(void)
{
	int	nstr, foundenv;
	char	*pch, **ppch, *str, *path;

	foundenv = 1;
	Fortune_path = FUNC4("FORTUNE_PATH");
	if (Fortune_path == NULL) {
		Fortune_path = FORTDIR;
		foundenv = 0;
	}
	path = FUNC6(Fortune_path);

	for (nstr = 2, pch = path; *pch != '\0'; pch++) {
		if (*pch == ':')
			nstr++;
	}

	ppch = Fortune_path_arr = (char **)FUNC0(nstr, sizeof(char *));
	
	nstr = 0;
	str = FUNC7(path, ":");
	while (str) {
		if (FUNC5(str)) {
			nstr++;
			*ppch++ = str;
		}
		str = FUNC7(NULL, ":");
	}

	if (nstr == 0) {
		if (foundenv == 1) {
			FUNC2(stderr,
			    "fortune: FORTUNE_PATH: None of the specified "
			    "directories found.\n");
			FUNC1(1);
		}
		FUNC3(path);
		Fortune_path_arr[0] = FUNC6(FORTDIR);
	}
}