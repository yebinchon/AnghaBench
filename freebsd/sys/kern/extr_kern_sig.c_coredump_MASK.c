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
struct vnode {scalar_t__ v_type; int v_vflag; } ;
struct vattr {int va_nlink; scalar_t__ va_uid; int /*<<< orphan*/  va_flags; scalar_t__ va_size; } ;
struct ucred {scalar_t__ cr_uid; } ;
struct thread {struct ucred* td_ucred; struct proc* td_proc; } ;
struct sbuf {int dummy; } ;
struct proc {int p_flag; int p_flag2; int /*<<< orphan*/  p_textvp; TYPE_1__* p_sysent; int /*<<< orphan*/  p_acflag; int /*<<< orphan*/  p_sig; int /*<<< orphan*/  p_pid; int /*<<< orphan*/  p_comm; struct thread* p_singlethread; } ;
struct flock {int /*<<< orphan*/  l_type; scalar_t__ l_len; scalar_t__ l_start; int /*<<< orphan*/  l_whence; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {int (* sv_coredump ) (struct thread*,struct vnode*,scalar_t__,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ACORE ; 
 int EFAULT ; 
 int EFBIG ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FWRITE ; 
 int /*<<< orphan*/  F_FLOCK ; 
 int /*<<< orphan*/  F_SETLK ; 
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  OFF_MAX ; 
 int P2_NOTRACE ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int P_HADTHREADS ; 
 int P_SUGID ; 
 int /*<<< orphan*/  RACCT_CORE ; 
 int /*<<< orphan*/  RLIMIT_CORE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  S_CORE ; 
 int /*<<< orphan*/  UF_NODUMP ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  FUNC4 (struct vattr*) ; 
 scalar_t__ FUNC5 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct flock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct vnode*,struct vattr*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,struct vattr*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,int /*<<< orphan*/ ) ; 
 scalar_t__ VREG ; 
 int VV_SYSTEM ; 
 int /*<<< orphan*/  FUNC9 (struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct thread*,char*,int) ; 
 int /*<<< orphan*/  compress_user_cores ; 
 scalar_t__ coredump_devctl ; 
 int FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnode**,char**) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  do_coredump ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct thread*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct thread*,int /*<<< orphan*/ ) ; 
 char* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC20 (struct sbuf*) ; 
 scalar_t__ FUNC21 (struct sbuf*) ; 
 struct sbuf* FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC24 (struct sbuf*,char) ; 
 scalar_t__ set_core_nodump_flag ; 
 int FUNC25 (struct thread*,struct vnode*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sugid_coredump ; 
 int FUNC26 (struct vnode*,int /*<<< orphan*/ ,struct ucred*,struct thread*) ; 
 scalar_t__ FUNC27 (struct thread*,int /*<<< orphan*/ ,char**,char**) ; 
 int /*<<< orphan*/  FUNC28 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct vnode*,void*) ; 
 void* FUNC30 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC31(struct thread *td)
{
	struct proc *p = td->td_proc;
	struct ucred *cred = td->td_ucred;
	struct vnode *vp;
	struct flock lf;
	struct vattr vattr;
	int error, error1, locked;
	char *name;			/* name of corefile */
	void *rl_cookie;
	off_t limit;
	char *fullpath, *freepath = NULL;
	struct sbuf *sb;

	FUNC2(p, MA_OWNED);
	FUNC0((p->p_flag & P_HADTHREADS) == 0 || p->p_singlethread == td);
	FUNC9(p, S_CORE, 0);

	if (!do_coredump || (!sugid_coredump && (p->p_flag & P_SUGID) != 0) ||
	    (p->p_flag2 & P2_NOTRACE) != 0) {
		FUNC3(p);
		return (EFAULT);
	}

	/*
	 * Note that the bulk of limit checking is done after
	 * the corefile is created.  The exception is if the limit
	 * for corefiles is 0, in which case we don't bother
	 * creating the corefile at all.  This layout means that
	 * a corefile is truncated instead of not being created,
	 * if it is larger than the limit.
	 */
	limit = (off_t)FUNC16(td, RLIMIT_CORE);
	if (limit == 0 || FUNC18(p, RACCT_CORE) == 0) {
		FUNC3(p);
		return (EFBIG);
	}
	FUNC3(p);

	error = FUNC11(p->p_comm, cred->cr_uid, p->p_pid, td,
	    compress_user_cores, p->p_sig, &vp, &name);
	if (error != 0)
		return (error);

	/*
	 * Don't dump to non-regular files or files with links.
	 * Do not dump into system files. Effective user must own the corefile.
	 */
	if (vp->v_type != VREG || FUNC6(vp, &vattr, cred) != 0 ||
	    vattr.va_nlink != 1 || (vp->v_vflag & VV_SYSTEM) != 0 ||
	    vattr.va_uid != cred->cr_uid) {
		FUNC8(vp, 0);
		error = EFAULT;
		goto out;
	}

	FUNC8(vp, 0);

	/* Postpone other writers, including core dumps of other processes. */
	rl_cookie = FUNC30(vp, 0, OFF_MAX);

	lf.l_whence = SEEK_SET;
	lf.l_start = 0;
	lf.l_len = 0;
	lf.l_type = F_WRLCK;
	locked = (FUNC5(vp, (caddr_t)p, F_SETLK, &lf, F_FLOCK) == 0);

	FUNC4(&vattr);
	vattr.va_size = 0;
	if (set_core_nodump_flag)
		vattr.va_flags = UF_NODUMP;
	FUNC28(vp, LK_EXCLUSIVE | LK_RETRY);
	FUNC7(vp, &vattr, cred);
	FUNC8(vp, 0);
	FUNC1(p);
	p->p_acflag |= ACORE;
	FUNC3(p);

	if (p->p_sysent->sv_coredump != NULL) {
		error = p->p_sysent->sv_coredump(td, vp, limit, 0);
	} else {
		error = ENOSYS;
	}

	if (locked) {
		lf.l_type = F_UNLCK;
		FUNC5(vp, (caddr_t)p, F_UNLCK, &lf, F_FLOCK);
	}
	FUNC29(vp, rl_cookie);

	/*
	 * Notify the userland helper that a process triggered a core dump.
	 * This allows the helper to run an automated debugging session.
	 */
	if (error != 0 || coredump_devctl == 0)
		goto out;
	sb = FUNC22();
	if (FUNC27(td, p->p_textvp, &fullpath, &freepath) != 0)
		goto out2;
	FUNC23(sb, "comm=\"");
	FUNC13(sb, fullpath);
	FUNC14(freepath, M_TEMP);
	FUNC23(sb, "\" core=\"");

	/*
	 * We can't lookup core file vp directly. When we're replacing a core, and
	 * other random times, we flush the name cache, so it will fail. Instead,
	 * if the path of the core is relative, add the current dir in front if it.
	 */
	if (name[0] != '/') {
		fullpath = FUNC17(MAXPATHLEN, M_TEMP, M_WAITOK);
		if (FUNC15(td, fullpath, UIO_SYSSPACE, MAXPATHLEN, MAXPATHLEN) != 0) {
			FUNC14(fullpath, M_TEMP);
			goto out2;
		}
		FUNC13(sb, fullpath);
		FUNC14(fullpath, M_TEMP);
		FUNC24(sb, '/');
	}
	FUNC13(sb, name);
	FUNC23(sb, "\"");
	if (FUNC21(sb) == 0)
		FUNC12("kernel", "signal", "coredump", FUNC19(sb));
out2:
	FUNC20(sb);
out:
	error1 = FUNC26(vp, FWRITE, cred, td);
	if (error == 0)
		error = error1;
#ifdef AUDIT
	audit_proc_coredump(td, name, error);
#endif
	FUNC14(name, M_TEMP);
	return (error);
}