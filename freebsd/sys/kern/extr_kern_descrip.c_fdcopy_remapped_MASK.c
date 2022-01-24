#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct filedescent {int /*<<< orphan*/  fde_caps; TYPE_2__* fde_file; } ;
struct filedesc {int fd_lastfile; size_t fd_freefile; int /*<<< orphan*/  fd_cmask; struct filedescent* fd_ofiles; } ;
struct TYPE_4__ {TYPE_1__* f_ops; } ;
struct TYPE_3__ {int fo_flags; } ;

/* Variables and functions */
 int DFLAG_PASSABLE ; 
 int E2BIG ; 
 int EBADF ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct filedesc*) ; 
 struct filedesc* FUNC3 (struct filedesc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct filedesc*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int
FUNC7(struct filedesc *fdp, const int *fds, size_t nfds,
    struct filedesc **ret)
{
	struct filedesc *newfdp;
	struct filedescent *nfde, *ofde;
	int error, i;

	FUNC1(fdp != NULL);

	newfdp = FUNC3(fdp, true);
	if (nfds > fdp->fd_lastfile + 1) {
		/* New table cannot be larger than the old one. */
		error = E2BIG;
		goto bad;
	}
	/* Copy all passable descriptors (i.e. not kqueue). */
	newfdp->fd_freefile = nfds;
	for (i = 0; i < nfds; ++i) {
		if (fds[i] < 0 || fds[i] > fdp->fd_lastfile) {
			/* File descriptor out of bounds. */
			error = EBADF;
			goto bad;
		}
		ofde = &fdp->fd_ofiles[fds[i]];
		if (ofde->fde_file == NULL) {
			/* Unused file descriptor. */
			error = EBADF;
			goto bad;
		}
		if ((ofde->fde_file->f_ops->fo_flags & DFLAG_PASSABLE) == 0) {
			/* File descriptor cannot be passed. */
			error = EINVAL;
			goto bad;
		}
		if (!FUNC5(nfde->fde_file)) {
			error = EBADF;
			goto bad;
		}
		nfde = &newfdp->fd_ofiles[i];
		*nfde = *ofde;
		FUNC6(&ofde->fde_caps, &nfde->fde_caps, true);
		FUNC4(newfdp, i);
		newfdp->fd_lastfile = i;
	}
	newfdp->fd_cmask = fdp->fd_cmask;
	FUNC0(fdp);
	*ret = newfdp;
	return (0);
bad:
	FUNC0(fdp);
	FUNC2(newfdp);
	return (error);
}