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
struct vnode {int dummy; } ;
struct thread {int td_dupfd; int* td_retval; int /*<<< orphan*/  td_ucred; } ;
struct mount {int dummy; } ;
struct file {int f_seqcount; int f_flag; struct vnode* f_vnode; int /*<<< orphan*/ * f_ops; } ;
struct fhopen_args {int /*<<< orphan*/  u_fhp; int /*<<< orphan*/  flags; } ;
struct fhandle {int /*<<< orphan*/  fh_fid; int /*<<< orphan*/  fh_fsid; } ;
typedef  int /*<<< orphan*/  fhp ;

/* Variables and functions */
 int /*<<< orphan*/  DTYPE_VNODE ; 
 int EINVAL ; 
 int ESTALE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FHASLOCK ; 
 int FMASK ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  PRIV_VFS_FHOPEN ; 
 int FUNC2 (struct mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vnode**) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  badfileops ; 
 int FUNC4 (int /*<<< orphan*/ ,struct fhandle*,int) ; 
 int FUNC5 (struct thread*,struct file**) ; 
 int /*<<< orphan*/  FUNC6 (struct file*,struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (struct file*,int,int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct thread*,struct file*,int*,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC10 (struct thread*,int /*<<< orphan*/ ) ; 
 struct mount* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mount*) ; 
 int FUNC13 (struct vnode*,int,int /*<<< orphan*/ ,struct thread*,struct file*) ; 
 int /*<<< orphan*/  vnops ; 
 int /*<<< orphan*/  FUNC14 (struct vnode*) ; 

int
FUNC15(struct thread *td, struct fhopen_args *uap)
{
	struct mount *mp;
	struct vnode *vp;
	struct fhandle fhp;
	struct file *fp;
	int fmode, error;
	int indx;

	error = FUNC10(td, PRIV_VFS_FHOPEN);
	if (error != 0)
		return (error);
	indx = -1;
	fmode = FUNC0(uap->flags);
	/* why not allow a non-read/write open for our lockd? */
	if (((fmode & (FREAD | FWRITE)) == 0) || (fmode & O_CREAT))
		return (EINVAL);
	error = FUNC4(uap->u_fhp, &fhp, sizeof(fhp));
	if (error != 0)
		return(error);
	/* find the mount point */
	mp = FUNC11(&fhp.fh_fsid);
	if (mp == NULL)
		return (ESTALE);
	/* now give me my vnode, it gets returned to me locked */
	error = FUNC2(mp, &fhp.fh_fid, LK_EXCLUSIVE, &vp);
	FUNC12(mp);
	if (error != 0)
		return (error);

	error = FUNC5(td, &fp);
	if (error != 0) {
		FUNC14(vp);
		return (error);
	}
	/*
	 * An extra reference on `fp' has been held for us by
	 * falloc_noinstall().
	 */

#ifdef INVARIANTS
	td->td_dupfd = -1;
#endif
	error = FUNC13(vp, fmode, td->td_ucred, td, fp);
	if (error != 0) {
		FUNC1(fp->f_ops == &badfileops,
		    ("VOP_OPEN in fhopen() set f_ops"));
		FUNC1(td->td_dupfd < 0,
		    ("fhopen() encountered fdopen()"));

		FUNC14(vp);
		goto bad;
	}
#ifdef INVARIANTS
	td->td_dupfd = 0;
#endif
	fp->f_vnode = vp;
	fp->f_seqcount = 1;
	FUNC7(fp, (fmode & FMASK) | (fp->f_flag & FHASLOCK), DTYPE_VNODE, vp,
	    &vnops);
	FUNC3(vp, 0);
	if ((fmode & O_TRUNC) != 0) {
		error = FUNC9(fp, 0, td->td_ucred, td);
		if (error != 0)
			goto bad;
	}

	error = FUNC8(td, fp, &indx, fmode, NULL);
bad:
	FUNC6(fp, td);
	td->td_retval[0] = indx;
	return (error);
}