#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dirent {int dummy; } ;
typedef  int /*<<< orphan*/  WIN32_FIND_DATAW ;
struct TYPE_3__ {struct dirent dd_dir; scalar_t__ dd_stat; int /*<<< orphan*/  dd_handle; } ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_1__ DIR ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 scalar_t__ ERROR_NO_MORE_FILES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (struct dirent*,int /*<<< orphan*/ *) ; 

struct dirent *FUNC4(DIR *dir)
{
	if (!dir) {
		errno = EBADF; /* No set_errno for mingw */
		return NULL;
	}

	/* if first entry, dirent has already been set up by opendir */
	if (dir->dd_stat) {
		/* get next entry and convert from WIN32_FIND_DATA to dirent */
		WIN32_FIND_DATAW fdata;
		if (FUNC0(dir->dd_handle, &fdata)) {
			FUNC3(&dir->dd_dir, &fdata);
		} else {
			DWORD lasterr = FUNC1();
			/* POSIX says you shouldn't set errno when readdir can't
			   find any more files; so, if another error we leave it set. */
			if (lasterr != ERROR_NO_MORE_FILES)
				errno = FUNC2(lasterr);
			return NULL;
		}
	}

	++dir->dd_stat;
	return &dir->dd_dir;
}