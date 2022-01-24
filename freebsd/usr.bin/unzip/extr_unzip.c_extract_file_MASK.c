#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_2__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct stat {TYPE_1__ st_mtim; int /*<<< orphan*/  st_mode; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int /*<<< orphan*/  AT_SYMLINK_NOFOLLOW ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ UTIME_NOW ; 
 int FUNC2 (struct archive_entry*) ; 
 scalar_t__ FUNC3 (struct archive_entry*) ; 
 scalar_t__ FUNC4 (struct archive_entry*) ; 
 char* FUNC5 (struct archive_entry*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (struct archive*,char*,int) ; 
 scalar_t__ f_opt ; 
 scalar_t__ FUNC9 (int,struct timespec*) ; 
 int FUNC10 (char**) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 scalar_t__ FUNC12 (char*,int) ; 
 scalar_t__ FUNC13 (char*,struct stat*) ; 
 scalar_t__ n_opt ; 
 scalar_t__ o_opt ; 
 int FUNC14 (char*,int,int) ; 
 scalar_t__ FUNC15 (char const*,char*) ; 
 scalar_t__ tty ; 
 scalar_t__ u_opt ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,char*,struct timespec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 

__attribute__((used)) static void
FUNC19(struct archive *a, struct archive_entry *e, char **path)
{
	int mode;
	struct timespec mtime;
	struct stat sb;
	struct timespec ts[2];
	int fd, check, text;
	const char *linkname;

	mode = FUNC2(e) & 0777;
	if (mode == 0)
		mode = 0644;
	mtime.tv_sec = FUNC3(e);
	mtime.tv_nsec = FUNC4(e);

	/* look for existing file of same name */
recheck:
	if (FUNC13(*path, &sb) == 0) {
		if (u_opt || f_opt) {
			/* check if up-to-date */
			if ((FUNC1(sb.st_mode) || FUNC0(sb.st_mode)) &&
			    (sb.st_mtim.tv_sec > mtime.tv_sec ||
			    (sb.st_mtim.tv_sec == mtime.tv_sec &&
			    sb.st_mtim.tv_nsec >= mtime.tv_nsec)))
				return;
			(void)FUNC16(*path);
		} else if (o_opt) {
			/* overwrite */
			(void)FUNC16(*path);
		} else if (n_opt) {
			/* do not overwrite */
			return;
		} else {
			check = FUNC10(path);
			if (check == 0)
				goto recheck;
			if (check == -1)
				return; /* do not overwrite */
		}
	} else {
		if (f_opt)
			return;
	}

	ts[0].tv_sec = 0;
	ts[0].tv_nsec = UTIME_NOW;
	ts[1] = mtime;

	/* process symlinks */
	linkname = FUNC5(e);
	if (linkname != NULL) {
		if (FUNC15(linkname, *path) != 0)
			FUNC7("symlink('%s')", *path);
		FUNC11(" extracting: %s -> %s\n", *path, linkname);
		if (FUNC12(*path, mode) != 0)
			FUNC18("Cannot set mode for '%s'", *path);
		/* set access and modification time */
		if (FUNC17(AT_FDCWD, *path, ts, AT_SYMLINK_NOFOLLOW) != 0)
			FUNC18("utimensat('%s')", *path);
		return;
	}

	if ((fd = FUNC14(*path, O_RDWR|O_CREAT|O_TRUNC, mode)) < 0)
		FUNC7("open('%s')", *path);

	FUNC11(" extracting: %s", *path);

	text = FUNC8(a, *path, fd);

	if (tty)
		FUNC11("  \b\b");
	if (text)
		FUNC11(" (text)");
	FUNC11("\n");

	/* set access and modification time */
	if (FUNC9(fd, ts) != 0)
		FUNC7("futimens('%s')", *path);
	if (FUNC6(fd) != 0)
		FUNC7("close('%s')", *path);
}