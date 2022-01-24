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
struct vnode {scalar_t__ v_type; } ;
struct thread {int td_dupfd; int* td_retval; int /*<<< orphan*/  td_ucred; struct proc* td_proc; } ;
struct proc {struct filedesc* p_fd; } ;
struct filecaps {int dummy; } ;
struct nameidata {int ni_lcf; struct filecaps ni_filecaps; struct vnode* ni_vp; } ;
struct filedesc {int fd_cmask; } ;
struct file {int f_flag; int f_seqcount; int /*<<< orphan*/ * f_ops; struct vnode* f_vnode; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int ALLPERMS ; 
 int AUDITVNODE1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CAP_LOOKUP ; 
 int /*<<< orphan*/  DTYPE_VNODE ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENXIO ; 
 int FUNC2 (int) ; 
 int FHASLOCK ; 
 int FMASK ; 
 int FOLLOW ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC4 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC5 (struct nameidata*,int /*<<< orphan*/ ,int,int,char const*,int,int /*<<< orphan*/ *,struct thread*) ; 
 int NI_LCF_STRICTRELATIVE ; 
 int O_ACCMODE ; 
 int O_EXEC ; 
 int O_TRUNC ; 
 int S_ISTXT ; 
 scalar_t__ VFIFO ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  badfileops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct thread*,struct filedesc*,scalar_t__,int,int,int*) ; 
 int FUNC9 (struct thread*,struct file**) ; 
 int /*<<< orphan*/  FUNC10 (struct file*,struct thread*) ; 
 int /*<<< orphan*/  FUNC11 (struct filecaps*) ; 
 int /*<<< orphan*/  FUNC12 (struct file*,int,int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct thread*,struct file*,int*,int,struct filecaps*) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC16 (struct nameidata*,int*,int,struct file*) ; 
 int /*<<< orphan*/  vnops ; 

int
FUNC17(struct thread *td, int fd, const char *path, enum uio_seg pathseg,
    int flags, int mode)
{
	struct proc *p = td->td_proc;
	struct filedesc *fdp = p->p_fd;
	struct file *fp;
	struct vnode *vp;
	struct nameidata nd;
	cap_rights_t rights;
	int cmode, error, indx;

	indx = -1;

	FUNC0(flags);
	FUNC1(mode);
	FUNC7(&rights, CAP_LOOKUP);
	FUNC14(flags, &rights);
	/*
	 * Only one of the O_EXEC, O_RDONLY, O_WRONLY and O_RDWR flags
	 * may be specified.
	 */
	if (flags & O_EXEC) {
		if (flags & O_ACCMODE)
			return (EINVAL);
	} else if ((flags & O_ACCMODE) == O_ACCMODE) {
		return (EINVAL);
	} else {
		flags = FUNC2(flags);
	}

	/*
	 * Allocate a file structure. The descriptor to reference it
	 * is allocated and set by finstall() below.
	 */
	error = FUNC9(td, &fp);
	if (error != 0)
		return (error);
	/*
	 * An extra reference on `fp' has been held for us by
	 * falloc_noinstall().
	 */
	/* Set the flags early so the finit in devfs can pick them up. */
	fp->f_flag = flags & FMASK;
	cmode = ((mode & ~fdp->fd_cmask) & ALLPERMS) & ~S_ISTXT;
	FUNC5(&nd, LOOKUP, FOLLOW | AUDITVNODE1, pathseg, path, fd,
	    &rights, td);
	td->td_dupfd = -1;		/* XXX check for fdopen */
	error = FUNC16(&nd, &flags, cmode, fp);
	if (error != 0) {
		/*
		 * If the vn_open replaced the method vector, something
		 * wonderous happened deep below and we just pass it up
		 * pretending we know what we do.
		 */
		if (error == ENXIO && fp->f_ops != &badfileops)
			goto success;

		/*
		 * Handle special fdopen() case. bleh.
		 *
		 * Don't do this for relative (capability) lookups; we don't
		 * understand exactly what would happen, and we don't think
		 * that it ever should.
		 */
		if ((nd.ni_lcf & NI_LCF_STRICTRELATIVE) == 0 &&
		    (error == ENODEV || error == ENXIO) &&
		    td->td_dupfd >= 0) {
			error = FUNC8(td, fdp, td->td_dupfd, flags, error,
			    &indx);
			if (error == 0)
				goto success;
		}

		goto bad;
	}
	td->td_dupfd = 0;
	FUNC4(&nd, NDF_ONLY_PNBUF);
	vp = nd.ni_vp;

	/*
	 * Store the vnode, for any f_type. Typically, the vnode use
	 * count is decremented by direct call to vn_closefile() for
	 * files that switched type in the cdevsw fdopen() method.
	 */
	fp->f_vnode = vp;
	/*
	 * If the file wasn't claimed by devfs bind it to the normal
	 * vnode operations here.
	 */
	if (fp->f_ops == &badfileops) {
		FUNC3(vp->v_type != VFIFO, ("Unexpected fifo."));
		fp->f_seqcount = 1;
		FUNC12(fp, (flags & FMASK) | (fp->f_flag & FHASLOCK),
		    DTYPE_VNODE, vp, &vnops);
	}

	FUNC6(vp, 0);
	if (flags & O_TRUNC) {
		error = FUNC15(fp, 0, td->td_ucred, td);
		if (error != 0)
			goto bad;
	}
success:
	/*
	 * If we haven't already installed the FD (for dupfdopen), do so now.
	 */
	if (indx == -1) {
		struct filecaps *fcaps;

#ifdef CAPABILITIES
		if ((nd.ni_lcf & NI_LCF_STRICTRELATIVE) != 0)
			fcaps = &nd.ni_filecaps;
		else
#endif
			fcaps = NULL;
		error = FUNC13(td, fp, &indx, flags, fcaps);
		/* On success finstall() consumes fcaps. */
		if (error != 0) {
			FUNC11(&nd.ni_filecaps);
			goto bad;
		}
	} else {
		FUNC11(&nd.ni_filecaps);
	}

	/*
	 * Release our private reference, leaving the one associated with
	 * the descriptor table intact.
	 */
	FUNC10(fp, td);
	td->td_retval[0] = indx;
	return (0);
bad:
	FUNC3(indx == -1, ("indx=%d, should be -1", indx));
	FUNC10(fp, td);
	return (error);
}