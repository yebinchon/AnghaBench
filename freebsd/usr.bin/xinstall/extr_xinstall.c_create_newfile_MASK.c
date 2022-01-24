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
struct stat {int st_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int MAXPATHLEN ; 
 int NOCHANGEBITS ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 scalar_t__ dobackup ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (char*,int,char*,char const*,char const*) ; 
 size_t FUNC7 (char const*) ; 
 char const* suffix ; 
 scalar_t__ FUNC8 (char const*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int
FUNC9(const char *path, int target, struct stat *sbp)
{
	char backup[MAXPATHLEN];
	int saved_errno = 0;
	int newfd;

	if (target) {
		/*
		 * Unlink now... avoid ETXTBSY errors later.  Try to turn
		 * off the append/immutable bits -- if we fail, go ahead,
		 * it might work.
		 */
#if HAVE_STRUCT_STAT_ST_FLAGS
		if (sbp->st_flags & NOCHANGEBITS)
			(void)chflags(path, sbp->st_flags & ~NOCHANGEBITS);
#endif

		if (dobackup) {
			if ((size_t)FUNC6(backup, MAXPATHLEN, "%s%s",
			    path, suffix) != FUNC7(path) + FUNC7(suffix)) {
				saved_errno = errno;
#if HAVE_STRUCT_STAT_ST_FLAGS
				if (sbp->st_flags & NOCHANGEBITS)
					(void)chflags(path, sbp->st_flags);
#endif
				errno = saved_errno;
				FUNC2(EX_OSERR, "%s: backup filename too long",
				    path);
			}
			(void)FUNC6(backup, MAXPATHLEN, "%s%s",
			    path, suffix);
			if (verbose)
				(void)FUNC4("install: %s -> %s\n",
				    path, backup);
			if (FUNC5(path, backup) < 0) {
				saved_errno = errno;
#if HAVE_STRUCT_STAT_ST_FLAGS
				if (sbp->st_flags & NOCHANGEBITS)
					(void)chflags(path, sbp->st_flags);
#endif
				errno = saved_errno;
				FUNC1(EX_OSERR, "rename: %s to %s", path, backup);
			}
		} else
			if (FUNC8(path) < 0)
				saved_errno = errno;
	}

	newfd = FUNC3(path, O_CREAT | O_RDWR | O_TRUNC, S_IRUSR | S_IWUSR);
	if (newfd < 0 && saved_errno != 0)
		errno = saved_errno;
	return newfd;
}