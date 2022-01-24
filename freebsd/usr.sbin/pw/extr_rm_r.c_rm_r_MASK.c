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
struct stat {scalar_t__ st_uid; int /*<<< orphan*/  st_mode; } ;
struct dirent {char const* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  AT_REMOVEDIR ; 
 int /*<<< orphan*/  AT_SYMLINK_NOFOLLOW ; 
 int /*<<< orphan*/  O_DIRECTORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,char const*,struct stat*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char const*,int /*<<< orphan*/ ) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char const*,int /*<<< orphan*/ ) ; 

void
FUNC9(int rootfd, const char *path, uid_t uid)
{
	int dirfd;
	DIR *d;
	struct dirent  *e;
	struct stat     st;

	if (*path == '/')
		path++;

	dirfd = FUNC5(rootfd, path, O_DIRECTORY);
	if (dirfd == -1) {
		return;
	}

	d = FUNC3(dirfd);
	while ((e = FUNC6(d)) != NULL) {
		if (FUNC7(e->d_name, ".") == 0 || FUNC7(e->d_name, "..") == 0)
			continue;

		if (FUNC4(dirfd, e->d_name, &st, AT_SYMLINK_NOFOLLOW) != 0)
			continue;
		if (FUNC0(st.st_mode))
			FUNC9(dirfd, e->d_name, uid);
		else if (FUNC1(st.st_mode) || st.st_uid == uid)
			FUNC8(dirfd, e->d_name, 0);
	}
	FUNC2(d);
	if (FUNC4(rootfd, path, &st, AT_SYMLINK_NOFOLLOW) != 0)
		return;
	FUNC8(rootfd, path, FUNC0(st.st_mode) ? AT_REMOVEDIR : 0);
}