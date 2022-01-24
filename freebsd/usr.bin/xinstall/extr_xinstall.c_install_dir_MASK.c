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
typedef  scalar_t__ uid_t ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  dounpriv ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ gid ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,int) ; 
 int /*<<< orphan*/  mode ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*,struct stat*) ; 
 scalar_t__ uid ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,char*,...) ; 

__attribute__((used)) static void
FUNC10(char *path)
{
	char *p;
	struct stat sb;
	int ch, tried_mkdir;

	for (p = path;; ++p)
		if (!*p || (p != path && *p  == '/')) {
			tried_mkdir = 0;
			ch = *p;
			*p = '\0';
again:
			if (FUNC8(path, &sb) < 0) {
				if (errno != ENOENT || tried_mkdir)
					FUNC3(EX_OSERR, "stat %s", path);
				if (FUNC6(path, 0755) < 0) {
					tried_mkdir = 1;
					if (errno == EEXIST)
						goto again;
					FUNC3(EX_OSERR, "mkdir %s", path);
				}
				if (verbose)
					(void)FUNC7("install: mkdir %s\n",
					    path);
			} else if (!FUNC0(sb.st_mode))
				FUNC4(EX_OSERR, "%s exists but is not a directory", path);
			if (!(*p = ch))
				break;
 		}

	if (!dounpriv) {
		if ((gid != (gid_t)-1 || uid != (uid_t)-1) &&
		    FUNC2(path, uid, gid))
			FUNC9("chown %u:%u %s", uid, gid, path);
		/* XXXBED: should we do the chmod in the dounpriv case? */
		if (FUNC1(path, mode))
			FUNC9("chmod %o %s", mode, path);
	}
	FUNC5(path, "dir", NULL, NULL, NULL, 0);
}