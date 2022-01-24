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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 char* FUNC2 (char const*,char) ; 
 char* FUNC3 () ; 

__attribute__((used)) static int FUNC4(const char *git_dir)
{
	const char *slash;
	char *cwd;
	int cwd_is_git_dir;

	/*
	 * "GIT_DIR=. git init" is always bare.
	 * "GIT_DIR=`pwd` git init" too.
	 */
	if (!FUNC1(".", git_dir))
		return 1;
	cwd = FUNC3();
	cwd_is_git_dir = !FUNC1(git_dir, cwd);
	FUNC0(cwd);
	if (cwd_is_git_dir)
		return 1;
	/*
	 * "GIT_DIR=.git or GIT_DIR=something/.git is usually not.
	 */
	if (!FUNC1(git_dir, ".git"))
		return 0;
	slash = FUNC2(git_dir, '/');
	if (slash && !FUNC1(slash, "/.git"))
		return 0;

	/*
	 * Otherwise it is often bare.  At this point
	 * we are just guessing.
	 */
	return 1;
}