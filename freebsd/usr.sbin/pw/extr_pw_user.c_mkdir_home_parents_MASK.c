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

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_OSFILE ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _DEF_DIRMODE ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,char const*,struct stat*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char) ; 
 char* FUNC9 (char const*) ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*) ; 

__attribute__((used)) static void
FUNC12(int dfd, const char *dir)
{
	struct stat st;
	char *dirs, *tmp;

	if (*dir != '/')
		FUNC3(EX_DATAERR, "invalid base directory for home '%s'", dir);

	dir++;

	if (FUNC6(dfd, dir, &st, 0) != -1) {
		if (FUNC0(st.st_mode))
			return;
		FUNC3(EX_OSFILE, "root home `/%s' is not a directory", dir);
	}

	dirs = FUNC9(dir);
	if (dirs == NULL)
		FUNC3(EX_UNAVAILABLE, "out of memory");

	tmp = FUNC10(dirs, '/');
	if (tmp == NULL) {
		FUNC5(dirs);
		return;
	}
	tmp[0] = '\0';

	/*
	 * This is a kludge especially for Joerg :)
	 * If the home directory would be created in the root partition, then
	 * we really create it under /usr which is likely to have more space.
	 * But we create a symlink from cnf->home -> "/usr" -> cnf->home
	 */
	if (FUNC8(dirs, '/') == NULL) {
		FUNC1(&tmp, "usr/%s", dirs);
		if (tmp == NULL)
			FUNC3(EX_UNAVAILABLE, "out of memory");
		if (FUNC7(dfd, tmp, _DEF_DIRMODE) != -1 || errno == EEXIST) {
			FUNC4(dfd, tmp, 0, 0, 0);
			FUNC11(tmp, dfd, dirs);
		}
		FUNC5(tmp);
	}
	tmp = dirs;
	if (FUNC6(dfd, dirs, &st, 0) == -1) {
		while ((tmp = FUNC8(tmp + 1, '/')) != NULL) {
			*tmp = '\0';
			if (FUNC6(dfd, dirs, &st, 0) == -1) {
				if (FUNC7(dfd, dirs, _DEF_DIRMODE) == -1)
					FUNC2(EX_OSFILE,  "'%s' (root home parent) is not a directory", dirs);
			}
			*tmp = '/';
		}
	}
	if (FUNC6(dfd, dirs, &st, 0) == -1) {
		if (FUNC7(dfd, dirs, _DEF_DIRMODE) == -1)
			FUNC2(EX_OSFILE,  "'%s' (root home parent) is not a directory", dirs);
		FUNC4(dfd, dirs, 0, 0, 0);
	}

	FUNC5(dirs);
}