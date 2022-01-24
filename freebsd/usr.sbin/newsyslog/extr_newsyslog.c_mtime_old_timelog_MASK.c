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
typedef  int time_t ;
struct tm {int dummy; } ;
struct stat {int st_mtime; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  AT_SYMLINK_NOFOLLOW ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,struct stat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 struct dirent* FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (int,struct dirent*,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static time_t
FUNC12(const char *file)
{
	struct stat sb;
	struct tm tm;
	int dir_fd;
	time_t t;
	struct dirent *dp;
	DIR *dirp;
	char *logfname, *logfnamebuf, *dir, *dirbuf;

	t = -1;

	if ((dirbuf = FUNC8(file)) == NULL) {
		FUNC10("strdup() of '%s'", file);
		return (t);
	}
	dir = FUNC3(dirbuf);
	if ((logfnamebuf = FUNC8(file)) == NULL) {
		FUNC10("strdup() of '%s'", file);
		FUNC4(dirbuf);
		return (t);
	}
	logfname = FUNC0(logfnamebuf);
	if (logfname[0] == '/') {
		FUNC11("Invalid log filename '%s'", logfname);
		goto out;
	}

	if ((dirp = FUNC6(dir)) == NULL) {
		FUNC10("Cannot open log directory '%s'", dir);
		goto out;
	}
	dir_fd = FUNC2(dirp);
	/* Open the archive dir and find the most recent archive of logfname. */
	while ((dp = FUNC7(dirp)) != NULL) {
		if (FUNC9(dir_fd, dp, logfname, &tm) == 0)
			continue;

		if (FUNC5(dir_fd, dp->d_name, &sb, AT_SYMLINK_NOFOLLOW) == -1) {
			FUNC10("Cannot stat '%s'", file);
			continue;
		}
		if (t < sb.st_mtime)
			t = sb.st_mtime;
	}
	FUNC1(dirp);

out:
	FUNC4(dirbuf);
	FUNC4(logfnamebuf);
	return (t);
}