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
struct timespec {int dummy; } ;
struct stat {int st_mode; int /*<<< orphan*/  st_flags; int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; struct timespec st_mtim; struct timespec st_atim; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 scalar_t__ EOPNOTSUPP ; 
 scalar_t__ EPERM ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 int S_ISGID ; 
 int S_ISUID ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,struct timespec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(const char *name, struct stat *fs)
{
	static struct timespec tspec[2];

	fs->st_mode &= S_ISUID|S_ISGID|S_IRWXU|S_IRWXG|S_IRWXO;

	tspec[0] = fs->st_atim;
	tspec[1] = fs->st_mtim;
	if (FUNC4(AT_FDCWD, name, tspec, 0))
		FUNC3("utimensat: %s", name);

	/*
	 * Changing the ownership probably won't succeed, unless we're root
	 * or POSIX_CHOWN_RESTRICTED is not set.  Set uid/gid before setting
	 * the mode; current BSD behavior is to remove all setuid bits on
	 * chown.  If chown fails, lose setuid/setgid bits.
	 */
	if (FUNC2(name, fs->st_uid, fs->st_gid)) {
		if (errno != EPERM)
			FUNC3("chown: %s", name);
		fs->st_mode &= ~(S_ISUID|S_ISGID);
	}
	if (FUNC1(name, fs->st_mode) && errno != EOPNOTSUPP)
		FUNC3("chmod: %s", name);

	if (FUNC0(name, fs->st_flags) && errno != EOPNOTSUPP)
		FUNC3("chflags: %s", name);
}