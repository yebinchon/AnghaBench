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
struct TYPE_8__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_7__ {scalar_t__ tv_nsec; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; } ;
struct stat {int st_mode; int st_uid; int st_gid; TYPE_4__ st_birthtim; TYPE_3__ st_ctim; scalar_t__ st_ctime; TYPE_2__ st_mtim; scalar_t__ st_mtime; TYPE_1__ st_atim; scalar_t__ st_atime; scalar_t__ st_size; scalar_t__ st_nlink; scalar_t__ st_ino; } ;
typedef  int /*<<< orphan*/  sizebuf ;

/* Variables and functions */
 int /*<<< orphan*/  HN_AUTOSCALE ; 
 int /*<<< orphan*/  HN_NOSPACE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct stat*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 

__attribute__((used)) static int
FUNC8(const char *path, bool hsize, bool uname)
{
	char sizebuf[8];
	struct stat st;
	int error, fd, ret;

	fd = FUNC5(path, O_RDONLY, 0);
	if (fd == -1) {
		FUNC7("open %s", path);
		return (1);
	}
	ret = 0;
	error = FUNC1(fd, &st);
	if (error == -1) {
		FUNC7("stat %s", path);
		ret = 1;
	} else {
		FUNC4("path\t%s\n", path);
		FUNC4("inode\t%jd\n", (uintmax_t)st.st_ino);
		FUNC4("mode\t%#o\n", st.st_mode);
		FUNC4("nlink\t%jd\n", (uintmax_t)st.st_nlink);
		if (uname) {
			FUNC4("owner\t%s\n", FUNC6(st.st_uid, 0));
			FUNC4("group\t%s\n", FUNC2(st.st_gid, 0));
		} else {
			FUNC4("uid\t%d\n", st.st_uid);
			FUNC4("gid\t%d\n", st.st_gid);
		}
		if (hsize) {
			FUNC3(sizebuf, sizeof(sizebuf),
			    st.st_size, "", HN_AUTOSCALE, HN_NOSPACE);
			FUNC4("size\t%s\n", sizebuf);
		} else {
			FUNC4("size\t%jd\n", (uintmax_t)st.st_size);
		}
		FUNC4("atime\t%ld.%09ld\n", (long)st.st_atime,
		    (long)st.st_atim.tv_nsec);
		FUNC4("mtime\t%ld.%09ld\n", (long)st.st_mtime,
		    (long)st.st_mtim.tv_nsec);
		FUNC4("ctime\t%ld.%09ld\n", (long)st.st_ctime,
		    (long)st.st_ctim.tv_nsec);
		FUNC4("birth\t%ld.%09ld\n", (long)st.st_birthtim.tv_sec,
		    (long)st.st_birthtim.tv_nsec);
	}
	FUNC0(fd);
	return (ret);
}