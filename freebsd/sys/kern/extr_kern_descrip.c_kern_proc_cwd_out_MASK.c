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
struct sbuf {int dummy; } ;
struct proc {int dummy; } ;
struct filedesc {int /*<<< orphan*/ * fd_cdir; } ;
struct export_fd_buf {int /*<<< orphan*/  remainder; struct sbuf* sb; struct filedesc* fdp; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int /*<<< orphan*/  FREAD ; 
 int /*<<< orphan*/  KF_FD_TYPE_CWD ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct export_fd_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct filedesc*) ; 
 struct filedesc* FUNC6 (struct proc*) ; 
 int /*<<< orphan*/  FUNC7 (struct export_fd_buf*,int /*<<< orphan*/ ) ; 
 struct export_fd_buf* FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(struct proc *p,  struct sbuf *sb, ssize_t maxlen)
{
	struct filedesc *fdp;
	struct export_fd_buf *efbuf;
	int error;

	FUNC2(p, MA_OWNED);

	fdp = FUNC6(p);
	FUNC3(p);
	if (fdp == NULL)
		return (EINVAL);

	efbuf = FUNC8(sizeof(*efbuf), M_TEMP, M_WAITOK);
	efbuf->fdp = fdp;
	efbuf->sb = sb;
	efbuf->remainder = maxlen;

	FUNC0(fdp);
	if (fdp->fd_cdir == NULL)
		error = EINVAL;
	else {
		FUNC9(fdp->fd_cdir);
		error = FUNC4(fdp->fd_cdir, KF_FD_TYPE_CWD,
		    FREAD, efbuf);
	}
	FUNC1(fdp);
	FUNC5(fdp);
	FUNC7(efbuf, M_TEMP);
	return (error);
}