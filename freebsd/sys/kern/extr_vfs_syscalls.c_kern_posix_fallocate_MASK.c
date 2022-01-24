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
struct vnode {scalar_t__ v_type; } ;
struct thread {int /*<<< orphan*/  td_ucred; int /*<<< orphan*/  td_proc; } ;
struct mount {int dummy; } ;
struct file {int f_flag; scalar_t__ f_type; int /*<<< orphan*/  f_cred; struct vnode* f_vnode; TYPE_1__* f_ops; } ;
typedef  scalar_t__ off_t ;
struct TYPE_2__ {int fo_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int DFLAG_SEEKABLE ; 
 scalar_t__ DTYPE_VNODE ; 
 int EBADF ; 
 int EFBIG ; 
 int EINVAL ; 
 int ENODEV ; 
 int ESPIPE ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 scalar_t__ OFF_MAX ; 
 int PCATCH ; 
 int FUNC4 (struct vnode*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,int /*<<< orphan*/ ) ; 
 scalar_t__ VREG ; 
 int V_WAIT ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  cap_pwrite_rights ; 
 int /*<<< orphan*/  FUNC7 (struct file*,struct thread*) ; 
 int FUNC8 (struct thread*,int,int /*<<< orphan*/ *,struct file**) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnode*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct mount*) ; 
 int FUNC13 (struct vnode*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct vnode*,struct mount**,int) ; 

int
FUNC15(struct thread *td, int fd, off_t offset, off_t len)
{
	struct file *fp;
	struct mount *mp;
	struct vnode *vp;
	off_t olen, ooffset;
	int error;
#ifdef AUDIT
	int audited_vnode1 = 0;
#endif

	FUNC0(fd);
	if (offset < 0 || len <= 0)
		return (EINVAL);
	/* Check for wrap. */
	if (offset > OFF_MAX - len)
		return (EFBIG);
	FUNC0(fd);
	error = FUNC8(td, fd, &cap_pwrite_rights, &fp);
	if (error != 0)
		return (error);
	FUNC1(td->td_proc, fp);
	if ((fp->f_ops->fo_flags & DFLAG_SEEKABLE) == 0) {
		error = ESPIPE;
		goto out;
	}
	if ((fp->f_flag & FWRITE) == 0) {
		error = EBADF;
		goto out;
	}
	if (fp->f_type != DTYPE_VNODE) {
		error = ENODEV;
		goto out;
	}
	vp = fp->f_vnode;
	if (vp->v_type != VREG) {
		error = ENODEV;
		goto out;
	}

	/* Allocating blocks may take a long time, so iterate. */
	for (;;) {
		olen = len;
		ooffset = offset;

		FUNC6();
		mp = NULL;
		error = FUNC14(vp, &mp, V_WAIT | PCATCH);
		if (error != 0)
			break;
		error = FUNC13(vp, LK_EXCLUSIVE);
		if (error != 0) {
			FUNC12(mp);
			break;
		}
#ifdef AUDIT
		if (!audited_vnode1) {
			AUDIT_ARG_VNODE1(vp);
			audited_vnode1 = 1;
		}
#endif
#ifdef MAC
		error = mac_vnode_check_write(td->td_ucred, fp->f_cred, vp);
		if (error == 0)
#endif
			error = FUNC4(vp, &offset, &len);
		FUNC5(vp, 0);
		FUNC12(mp);

		if (olen + ooffset != offset + len) {
			FUNC11("offset + len changed from %jx/%jx to %jx/%jx",
			    ooffset, olen, offset, len);
		}
		if (error != 0 || len == 0)
			break;
		FUNC3(olen > len, ("Iteration did not make progress?"));
		FUNC10();
	}
 out:
	FUNC7(fp, td);
	return (error);
}