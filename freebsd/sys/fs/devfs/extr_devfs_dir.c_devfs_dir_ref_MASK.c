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
struct dirlistent {int refcnt; struct dirlistent* dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct dirlistent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVFS4 ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct dirlistent* FUNC1 (char const*) ; 
 int /*<<< orphan*/  devfs_dirlist ; 
 int /*<<< orphan*/  dirlist_mtx ; 
 int /*<<< orphan*/  FUNC2 (struct dirlistent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 struct dirlistent* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct dirlistent* FUNC6 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(const char *dir)
{
	struct dirlistent *dle, *dle_new;

	if (*dir == '\0')
		return;

	dle_new = FUNC3(sizeof(*dle), M_DEVFS4, M_WAITOK);
	dle_new->dir = FUNC6(dir, M_DEVFS4);
	dle_new->refcnt = 1;

	FUNC4(&dirlist_mtx);
	dle = FUNC1(dir);
	if (dle != NULL) {
		dle->refcnt++;
		FUNC5(&dirlist_mtx);
		FUNC2(dle_new->dir, M_DEVFS4);
		FUNC2(dle_new, M_DEVFS4);
		return;
	}
	FUNC0(&devfs_dirlist, dle_new, link);
	FUNC5(&dirlist_mtx);
}