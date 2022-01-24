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
struct stat {int st_mode; scalar_t__ st_flags; struct timespec st_mtim; struct timespec st_atim; int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; } ;
typedef  int mode_t ;

/* Variables and functions */
 int DEFFILEMODE ; 
 scalar_t__ EPERM ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 int S_ISGID ; 
 int S_ISUID ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,struct timespec*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(int fd, const struct stat *sbp, const char *file)
{
	struct timespec times[2];
	struct stat sb;

	/*
	 * If we have no info on the input, give this file some
	 * default values and return..
	 */
	if (sbp == NULL) {
		mode_t mask = FUNC5(022);

		(void)FUNC1(fd, DEFFILEMODE & ~mask);
		(void)FUNC5(mask);
		return;
	}
	sb = *sbp;

	/* if the chown fails, remove set-id bits as-per compress(1) */
	if (FUNC2(fd, sb.st_uid, sb.st_gid) < 0) {
		if (errno != EPERM)
			FUNC4("couldn't fchown: %s", file);
		sb.st_mode &= ~(S_ISUID|S_ISGID);
	}

	/* we only allow set-id and the 9 normal permission bits */
	sb.st_mode &= S_ISUID | S_ISGID | S_IRWXU | S_IRWXG | S_IRWXO;
	if (FUNC1(fd, sb.st_mode) < 0)
		FUNC4("couldn't fchmod: %s", file);

	times[0] = sb.st_atim;
	times[1] = sb.st_mtim;
	if (FUNC3(fd, times) < 0)
		FUNC4("couldn't futimens: %s", file);

	/* only try flags if they exist already */
        if (sb.st_flags != 0 && FUNC0(fd, sb.st_flags) < 0)
		FUNC4("couldn't fchflags: %s", file);
}