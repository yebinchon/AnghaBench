#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  timestr ;
struct tm {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_7__ {int /*<<< orphan*/  tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {int /*<<< orphan*/  tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_5__ {int /*<<< orphan*/  tv_nsec; scalar_t__ tv_sec; } ;
struct stat {int /*<<< orphan*/  st_flags; scalar_t__ st_blocks; scalar_t__ st_blksize; scalar_t__ st_size; TYPE_4__ st_birthtim; TYPE_3__ st_ctim; TYPE_2__ st_mtim; TYPE_1__ st_atim; scalar_t__ st_rdev; scalar_t__ st_gid; scalar_t__ st_uid; scalar_t__ st_nlink; scalar_t__ st_mode; scalar_t__ st_ino; scalar_t__ st_dev; } ;
struct passwd {char* pw_name; } ;
struct group {char* gr_name; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  TIME_FORMAT ; 
 struct group* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct passwd* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * capgrp ; 
 int /*<<< orphan*/ * cappwd ; 
 struct group* FUNC2 (scalar_t__) ; 
 struct passwd* FUNC3 (scalar_t__) ; 
 struct tm* FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  resolv ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ,struct tm*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*) ; 

void
FUNC8(struct stat *statp)
{
	char mode[12], timestr[PATH_MAX + 4];
	struct passwd *pwd;
	struct group  *grp;
	struct tm *tm;

	/*
	 * note: ktrstruct() has already verified that statp points to a
	 * buffer exactly sizeof(struct stat) bytes long.
	 */
	FUNC5("struct stat {");
	FUNC5("dev=%ju, ino=%ju, ",
		(uintmax_t)statp->st_dev, (uintmax_t)statp->st_ino);
	if (!resolv)
		FUNC5("mode=0%jo, ", (uintmax_t)statp->st_mode);
	else {
		FUNC7(statp->st_mode, mode);
		FUNC5("mode=%s, ", mode);
	}
	FUNC5("nlink=%ju, ", (uintmax_t)statp->st_nlink);
	if (!resolv) {
		pwd = NULL;
	} else {
#ifdef WITH_CASPER
		if (cappwd != NULL)
			pwd = cap_getpwuid(cappwd, statp->st_uid);
		else
#endif
			pwd = FUNC3(statp->st_uid);
	}
	if (pwd == NULL)
		FUNC5("uid=%ju, ", (uintmax_t)statp->st_uid);
	else
		FUNC5("uid=\"%s\", ", pwd->pw_name);
	if (!resolv) {
		grp = NULL;
	} else {
#ifdef WITH_CASPER
		if (capgrp != NULL)
			grp = cap_getgrgid(capgrp, statp->st_gid);
		else
#endif
			grp = FUNC2(statp->st_gid);
	}
	if (grp == NULL)
		FUNC5("gid=%ju, ", (uintmax_t)statp->st_gid);
	else
		FUNC5("gid=\"%s\", ", grp->gr_name);
	FUNC5("rdev=%ju, ", (uintmax_t)statp->st_rdev);
	FUNC5("atime=");
	if (!resolv)
		FUNC5("%jd", (intmax_t)statp->st_atim.tv_sec);
	else {
		tm = FUNC4(&statp->st_atim.tv_sec);
		FUNC6(timestr, sizeof(timestr), TIME_FORMAT, tm);
		FUNC5("\"%s\"", timestr);
	}
	if (statp->st_atim.tv_nsec != 0)
		FUNC5(".%09ld, ", statp->st_atim.tv_nsec);
	else
		FUNC5(", ");
	FUNC5("mtime=");
	if (!resolv)
		FUNC5("%jd", (intmax_t)statp->st_mtim.tv_sec);
	else {
		tm = FUNC4(&statp->st_mtim.tv_sec);
		FUNC6(timestr, sizeof(timestr), TIME_FORMAT, tm);
		FUNC5("\"%s\"", timestr);
	}
	if (statp->st_mtim.tv_nsec != 0)
		FUNC5(".%09ld, ", statp->st_mtim.tv_nsec);
	else
		FUNC5(", ");
	FUNC5("ctime=");
	if (!resolv)
		FUNC5("%jd", (intmax_t)statp->st_ctim.tv_sec);
	else {
		tm = FUNC4(&statp->st_ctim.tv_sec);
		FUNC6(timestr, sizeof(timestr), TIME_FORMAT, tm);
		FUNC5("\"%s\"", timestr);
	}
	if (statp->st_ctim.tv_nsec != 0)
		FUNC5(".%09ld, ", statp->st_ctim.tv_nsec);
	else
		FUNC5(", ");
	FUNC5("birthtime=");
	if (!resolv)
		FUNC5("%jd", (intmax_t)statp->st_birthtim.tv_sec);
	else {
		tm = FUNC4(&statp->st_birthtim.tv_sec);
		FUNC6(timestr, sizeof(timestr), TIME_FORMAT, tm);
		FUNC5("\"%s\"", timestr);
	}
	if (statp->st_birthtim.tv_nsec != 0)
		FUNC5(".%09ld, ", statp->st_birthtim.tv_nsec);
	else
		FUNC5(", ");
	FUNC5("size=%jd, blksize=%ju, blocks=%jd, flags=0x%x",
		(uintmax_t)statp->st_size, (uintmax_t)statp->st_blksize,
		(intmax_t)statp->st_blocks, statp->st_flags);
	FUNC5(" }\n");
}