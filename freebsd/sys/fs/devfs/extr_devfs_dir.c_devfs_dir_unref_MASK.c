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
struct dirlistent {scalar_t__ refcnt; struct dirlistent* dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dirlistent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVFS4 ; 
 struct dirlistent* FUNC2 (char const*) ; 
 int /*<<< orphan*/  dirlist_mtx ; 
 int /*<<< orphan*/  FUNC3 (struct dirlistent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(const char *dir)
{
	struct dirlistent *dle;

	if (*dir == '\0')
		return;

	FUNC4(&dirlist_mtx);
	dle = FUNC2(dir);
	FUNC0(dle != NULL, ("devfs_dir_unref: dir %s not referenced", dir));
	dle->refcnt--;
	FUNC0(dle->refcnt >= 0, ("devfs_dir_unref: negative refcnt"));
	if (dle->refcnt == 0) {
		FUNC1(dle, link);
		FUNC5(&dirlist_mtx);
		FUNC3(dle->dir, M_DEVFS4);
		FUNC3(dle, M_DEVFS4);
	} else
		FUNC5(&dirlist_mtx);
}