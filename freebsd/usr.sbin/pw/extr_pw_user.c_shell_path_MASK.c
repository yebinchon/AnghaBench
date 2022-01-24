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
typedef  int /*<<< orphan*/  shellpath ;
typedef  int /*<<< orphan*/  paths ;

/* Variables and functions */
 int /*<<< orphan*/  EX_CONFIG ; 
 int /*<<< orphan*/  EX_OSFILE ; 
 int /*<<< orphan*/  X_OK ; 
 int _UC_MAXLINE ; 
 int _UC_MAXSHELLS ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static char *
FUNC5(char const * path, char *shells[], char *sh)
{
	if (sh != NULL && (*sh == '/' || *sh == '\0'))
		return sh;	/* specified full path or forced none */
	else {
		char           *p;
		char            paths[_UC_MAXLINE];

		/*
		 * We need to search paths
		 */
		FUNC3(paths, path, sizeof(paths));
		for (p = FUNC4(paths, ": \t\r\n"); p != NULL; p = FUNC4(NULL, ": \t\r\n")) {
			int             i;
			static char     shellpath[256];

			if (sh != NULL) {
				FUNC2(shellpath, sizeof(shellpath), "%s/%s", p, sh);
				if (FUNC0(shellpath, X_OK) == 0)
					return shellpath;
			} else
				for (i = 0; i < _UC_MAXSHELLS && shells[i] != NULL; i++) {
					FUNC2(shellpath, sizeof(shellpath), "%s/%s", p, shells[i]);
					if (FUNC0(shellpath, X_OK) == 0)
						return shellpath;
				}
		}
		if (sh == NULL)
			FUNC1(EX_OSFILE, "can't find shell `%s' in shell paths", sh);
		FUNC1(EX_CONFIG, "no default shell available or defined");
		return NULL;
	}
}