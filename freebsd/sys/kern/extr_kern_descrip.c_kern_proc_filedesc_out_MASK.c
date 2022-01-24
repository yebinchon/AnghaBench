#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
struct sbuf {int dummy; } ;
struct proc {TYPE_2__* p_pgrp; struct vnode* p_textvp; struct vnode* p_tracevp; } ;
struct filedesc {scalar_t__ fd_refcnt; int fd_lastfile; TYPE_3__* fd_ofiles; struct vnode* fd_jdir; struct vnode* fd_rdir; struct vnode* fd_cdir; } ;
struct file {int dummy; } ;
struct export_fd_buf {scalar_t__ remainder; int flags; struct filedesc* fdp; struct sbuf* sb; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;
struct TYPE_6__ {struct file* fde_file; } ;
struct TYPE_5__ {TYPE_1__* pg_session; } ;
struct TYPE_4__ {struct vnode* s_ttyvp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  KF_FD_TYPE_CTTY ; 
 int /*<<< orphan*/  KF_FD_TYPE_CWD ; 
 int /*<<< orphan*/  KF_FD_TYPE_JAIL ; 
 int /*<<< orphan*/  KF_FD_TYPE_ROOT ; 
 int /*<<< orphan*/  KF_FD_TYPE_TEXT ; 
 int /*<<< orphan*/  KF_FD_TYPE_TRACE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  cap_no_rights ; 
 int /*<<< orphan*/ * FUNC4 (struct filedesc*,int) ; 
 int FUNC5 (struct file*,int,int /*<<< orphan*/ *,struct export_fd_buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,int /*<<< orphan*/ ,int,struct export_fd_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct filedesc*) ; 
 struct filedesc* FUNC8 (struct proc*) ; 
 int /*<<< orphan*/  FUNC9 (struct export_fd_buf*,int /*<<< orphan*/ ) ; 
 struct export_fd_buf* FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vnode*) ; 

int
FUNC12(struct proc *p,  struct sbuf *sb, ssize_t maxlen,
    int flags)
{
	struct file *fp;
	struct filedesc *fdp;
	struct export_fd_buf *efbuf;
	struct vnode *cttyvp, *textvp, *tracevp;
	int error, i;
	cap_rights_t rights;

	FUNC2(p, MA_OWNED);

	/* ktrace vnode */
	tracevp = p->p_tracevp;
	if (tracevp != NULL)
		FUNC11(tracevp);
	/* text vnode */
	textvp = p->p_textvp;
	if (textvp != NULL)
		FUNC11(textvp);
	/* Controlling tty. */
	cttyvp = NULL;
	if (p->p_pgrp != NULL && p->p_pgrp->pg_session != NULL) {
		cttyvp = p->p_pgrp->pg_session->s_ttyvp;
		if (cttyvp != NULL)
			FUNC11(cttyvp);
	}
	fdp = FUNC8(p);
	FUNC3(p);
	efbuf = FUNC10(sizeof(*efbuf), M_TEMP, M_WAITOK);
	efbuf->fdp = NULL;
	efbuf->sb = sb;
	efbuf->remainder = maxlen;
	efbuf->flags = flags;
	if (tracevp != NULL)
		FUNC6(tracevp, KF_FD_TYPE_TRACE, FREAD | FWRITE,
		    efbuf);
	if (textvp != NULL)
		FUNC6(textvp, KF_FD_TYPE_TEXT, FREAD, efbuf);
	if (cttyvp != NULL)
		FUNC6(cttyvp, KF_FD_TYPE_CTTY, FREAD | FWRITE,
		    efbuf);
	error = 0;
	if (fdp == NULL)
		goto fail;
	efbuf->fdp = fdp;
	FUNC0(fdp);
	/* working directory */
	if (fdp->fd_cdir != NULL) {
		FUNC11(fdp->fd_cdir);
		FUNC6(fdp->fd_cdir, KF_FD_TYPE_CWD, FREAD, efbuf);
	}
	/* root directory */
	if (fdp->fd_rdir != NULL) {
		FUNC11(fdp->fd_rdir);
		FUNC6(fdp->fd_rdir, KF_FD_TYPE_ROOT, FREAD, efbuf);
	}
	/* jail directory */
	if (fdp->fd_jdir != NULL) {
		FUNC11(fdp->fd_jdir);
		FUNC6(fdp->fd_jdir, KF_FD_TYPE_JAIL, FREAD, efbuf);
	}
	for (i = 0; fdp->fd_refcnt > 0 && i <= fdp->fd_lastfile; i++) {
		if ((fp = fdp->fd_ofiles[i].fde_file) == NULL)
			continue;
#ifdef CAPABILITIES
		rights = *cap_rights(fdp, i);
#else /* !CAPABILITIES */
		rights = cap_no_rights;
#endif
		/*
		 * Create sysctl entry.  It is OK to drop the filedesc
		 * lock inside of export_file_to_sb() as we will
		 * re-validate and re-evaluate its properties when the
		 * loop continues.
		 */
		error = FUNC5(fp, i, &rights, efbuf);
		if (error != 0 || efbuf->remainder == 0)
			break;
	}
	FUNC1(fdp);
	FUNC7(fdp);
fail:
	FUNC9(efbuf, M_TEMP);
	return (error);
}