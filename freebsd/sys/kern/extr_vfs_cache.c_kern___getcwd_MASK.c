#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct filedesc {struct vnode* fd_rdir; struct vnode* fd_cdir; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
struct TYPE_2__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_NAMEI ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int UIO_SYSSPACE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,scalar_t__) ; 
 int FUNC5 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  curthread ; 
 int disablecwd ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*) ; 
 int FUNC10 (struct thread*,struct vnode*,struct vnode*,char*,char**,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC12 (struct vnode*) ; 

int
FUNC13(struct thread *td, char *buf, enum uio_seg bufseg, size_t buflen,
    size_t path_max)
{
	char *bp, *tmpbuf;
	struct filedesc *fdp;
	struct vnode *cdir, *rdir;
	int error;

	if (FUNC3(disablecwd))
		return (ENODEV);
	if (FUNC3(buflen < 2))
		return (EINVAL);
	if (buflen > path_max)
		buflen = path_max;

	tmpbuf = FUNC8(buflen, M_TEMP, M_WAITOK);
	fdp = td->td_proc->p_fd;
	FUNC0(fdp);
	cdir = fdp->fd_cdir;
	FUNC11(cdir);
	rdir = fdp->fd_rdir;
	FUNC11(rdir);
	FUNC1(fdp);
	error = FUNC10(td, cdir, rdir, tmpbuf, &bp, buflen);
	FUNC12(rdir);
	FUNC12(cdir);

	if (!error) {
		if (bufseg == UIO_SYSSPACE)
			FUNC4(bp, buf, FUNC9(bp) + 1);
		else
			error = FUNC5(bp, buf, FUNC9(bp) + 1);
#ifdef KTRACE
	if (KTRPOINT(curthread, KTR_NAMEI))
		ktrnamei(bp);
#endif
	}
	FUNC6(tmpbuf, M_TEMP);
	return (error);
}