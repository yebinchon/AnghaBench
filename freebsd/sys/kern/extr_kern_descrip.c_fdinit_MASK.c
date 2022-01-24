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
struct filedesc {int fd_lastfile; scalar_t__ fd_nfiles; scalar_t__ fd_jdir; scalar_t__ fd_rdir; scalar_t__ fd_cdir; struct fdescenttbl* fd_files; int /*<<< orphan*/  fd_map; int /*<<< orphan*/  fd_cmask; int /*<<< orphan*/  fd_holdcnt; int /*<<< orphan*/  fd_refcnt; } ;
struct filedesc0 {int /*<<< orphan*/  fd_dfiles; int /*<<< orphan*/  fd_dmap; struct filedesc fd_fd; } ;
struct fdescenttbl {int /*<<< orphan*/  fdt_nfiles; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMASK ; 
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC2 (struct filedesc*) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NDFILE ; 
 int /*<<< orphan*/  FUNC3 (struct filedesc*,scalar_t__) ; 
 int /*<<< orphan*/  filedesc0_zone ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct filedesc0* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

struct filedesc *
FUNC7(struct filedesc *fdp, bool prepfiles)
{
	struct filedesc0 *newfdp0;
	struct filedesc *newfdp;

	newfdp0 = FUNC5(filedesc0_zone, M_WAITOK | M_ZERO);
	newfdp = &newfdp0->fd_fd;

	/* Create the file descriptor table. */
	FUNC0(newfdp);
	FUNC4(&newfdp->fd_refcnt, 1);
	FUNC4(&newfdp->fd_holdcnt, 1);
	newfdp->fd_cmask = CMASK;
	newfdp->fd_map = newfdp0->fd_dmap;
	newfdp->fd_lastfile = -1;
	newfdp->fd_files = (struct fdescenttbl *)&newfdp0->fd_dfiles;
	newfdp->fd_files->fdt_nfiles = NDFILE;

	if (fdp == NULL)
		return (newfdp);

	if (prepfiles && fdp->fd_lastfile >= newfdp->fd_nfiles)
		FUNC3(newfdp, fdp->fd_lastfile + 1);

	FUNC1(fdp);
	newfdp->fd_cdir = fdp->fd_cdir;
	if (newfdp->fd_cdir)
		FUNC6(newfdp->fd_cdir);
	newfdp->fd_rdir = fdp->fd_rdir;
	if (newfdp->fd_rdir)
		FUNC6(newfdp->fd_rdir);
	newfdp->fd_jdir = fdp->fd_jdir;
	if (newfdp->fd_jdir)
		FUNC6(newfdp->fd_jdir);

	if (!prepfiles) {
		FUNC2(fdp);
	} else {
		while (fdp->fd_lastfile >= newfdp->fd_nfiles) {
			FUNC2(fdp);
			FUNC3(newfdp, fdp->fd_lastfile + 1);
			FUNC1(fdp);
		}
	}

	return (newfdp);
}