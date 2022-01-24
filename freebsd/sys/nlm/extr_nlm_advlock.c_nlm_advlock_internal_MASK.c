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
union nfsfh {int /*<<< orphan*/  fh_bytes; } ;
struct vnode {TYPE_1__* v_mount; } ;
struct ucred {int dummy; } ;
struct timeval {int dummy; } ;
struct thread {struct ucred* td_ucred; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct rpc_callextra {int /*<<< orphan*/ * rc_timers; struct nlm_feedback_arg* rc_feedback_arg; int /*<<< orphan*/  rc_feedback; int /*<<< orphan*/ * rc_auth; } ;
struct proc {int p_pid; } ;
struct nlm_host {int dummy; } ;
struct nlm_file_svid {int ns_svid; void* ns_active; int /*<<< orphan*/  ns_refs; scalar_t__ ns_ucred; } ;
struct nlm_feedback_arg {struct nfsmount* nf_nmp; void* nf_printed; } ;
struct nfsmount {int nm_flag; int nm_retry; int /*<<< orphan*/  (* nm_getinfo ) (struct vnode*,int /*<<< orphan*/ ,size_t*,struct sockaddr_storage*,int*,int /*<<< orphan*/ *,struct timeval*) ;int /*<<< orphan*/  nm_hostname; int /*<<< orphan*/  (* nm_vinvalbuf ) (struct vnode*,int /*<<< orphan*/ ,struct thread*,int) ;} ;
struct flock {scalar_t__ l_start; scalar_t__ l_len; int l_pid; int l_type; } ;
typedef  int /*<<< orphan*/  rpcvers_t ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  ext ;
typedef  scalar_t__ bool_t ;
struct TYPE_2__ {struct ucred* mnt_cred; } ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int EAGAIN ; 
 int EINVAL ; 
 void* FALSE ; 
 int F_FLOCK ; 
#define  F_GETLK 130 
 int F_REMOTE ; 
#define  F_SETLK 129 
#define  F_UNLCK 128 
 int F_WAIT ; 
 int F_WRLCK ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  MNAMELEN ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int NFSMNT_SOFT ; 
 int /*<<< orphan*/  NLM_VERS ; 
 int /*<<< orphan*/  NLM_VERS4 ; 
 void* TRUE ; 
 struct nfsmount* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_SAVE ; 
 int /*<<< orphan*/ * FUNC5 (struct ucred*) ; 
 scalar_t__ FUNC6 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC7 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC8 (struct ucred*) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rpc_callextra*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct nlm_host*,struct rpc_callextra*,int /*<<< orphan*/ ,struct timeval*,int,struct vnode*,int,struct flock*,int,int,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nlm_feedback ; 
 struct nlm_host* FUNC15 (char*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 struct nlm_file_svid* FUNC16 (void*) ; 
 int /*<<< orphan*/  FUNC17 (struct nlm_file_svid*) ; 
 int FUNC18 (struct nlm_host*,struct rpc_callextra*,int /*<<< orphan*/ ,struct timeval*,int,struct vnode*,int,struct flock*,int,int,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct nlm_host*) ; 
 int FUNC20 (struct nlm_host*,struct rpc_callextra*,int /*<<< orphan*/ ,struct timeval*,int,struct vnode*,int const,struct flock*,int,int,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  nlm_svid_lock ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct vnode*,int /*<<< orphan*/ ,struct thread*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct vnode*,int /*<<< orphan*/ ,size_t*,struct sockaddr_storage*,int*,int /*<<< orphan*/ *,struct timeval*) ; 

__attribute__((used)) static int
FUNC24(struct vnode *vp, void *id, int op, struct flock *fl,
    int flags, bool_t reclaim, bool_t unlock_vp)
{
	struct thread *td = curthread;
	struct nfsmount *nmp;
	off_t size;
	size_t fhlen;
	union nfsfh fh;
	struct sockaddr *sa;
	struct sockaddr_storage ss;
	char *servername;
	struct timeval timo;
	int retries;
	rpcvers_t vers;
	struct nlm_host *host;
	struct rpc_callextra ext;
	struct nlm_feedback_arg nf;
	AUTH *auth;
	struct ucred *cred, *cred1;
	struct nlm_file_svid *ns;
	int svid;
	int error;
	int is_v3;

	FUNC0(vp, "nlm_advlock_1");

	servername = FUNC10(MNAMELEN, M_TEMP, M_WAITOK); /* XXXKIB vp locked */
	nmp = FUNC3(vp->v_mount);
	/*
	 * Push any pending writes to the server and flush our cache
	 * so that if we are contending with another machine for a
	 * file, we get whatever they wrote and vice-versa.
	 */
	if (op == F_SETLK || op == F_UNLCK)
		nmp->nm_vinvalbuf(vp, V_SAVE, td, 1);

	FUNC21(servername, nmp->nm_hostname);
	nmp->nm_getinfo(vp, fh.fh_bytes, &fhlen, &ss, &is_v3, &size, &timo);
	sa = (struct sockaddr *) &ss;
	if (is_v3 != 0)
		vers = NLM_VERS4;
	else
		vers = NLM_VERS;

	if (nmp->nm_flag & NFSMNT_SOFT)
		retries = nmp->nm_retry;
	else
		retries = INT_MAX;

	/*
	 * We need to switch to mount-point creds so that we can send
	 * packets from a privileged port.  Reference mnt_cred and
	 * switch to them before unlocking the vnode, since mount
	 * point could be unmounted right after unlock.
	 */
	cred = td->td_ucred;
	td->td_ucred = vp->v_mount->mnt_cred;
	FUNC8(td->td_ucred);
	if (unlock_vp)
		FUNC4(vp, 0);

	host = FUNC15(servername, sa, vers);
	auth = FUNC5(cred);
	FUNC11(&ext, 0, sizeof(ext));

	nf.nf_printed = FALSE;
	nf.nf_nmp = nmp;
	ext.rc_auth = auth;

	ext.rc_feedback = nlm_feedback;
	ext.rc_feedback_arg = &nf;
	ext.rc_timers = NULL;

	ns = NULL;
	if (flags & F_FLOCK) {
		ns = FUNC16(id);
		FUNC2(fl->l_start == 0 && fl->l_len == 0,
		    ("F_FLOCK lock requests must be whole-file locks"));
		if (!ns->ns_ucred) {
			/*
			 * Remember the creds used for locking in case
			 * we need to recover the lock later.
			 */
			ns->ns_ucred = FUNC6(cred);
		}
		svid = ns->ns_svid;
	} else if (flags & F_REMOTE) {
		/*
		 * If we are recovering after a server restart or
		 * trashing locks on a force unmount, use the same
		 * svid as last time.
		 */
		svid = fl->l_pid;
	} else {
		svid = ((struct proc *) id)->p_pid;
	}

	switch(op) {
	case F_SETLK:
		if ((flags & (F_FLOCK|F_WAIT)) == (F_FLOCK|F_WAIT)
		    && fl->l_type == F_WRLCK) {
			/*
			 * The semantics for flock(2) require that any
			 * shared lock on the file must be released
			 * before an exclusive lock is granted. The
			 * local locking code interprets this by
			 * unlocking the file before sleeping on a
			 * blocked exclusive lock request. We
			 * approximate this by first attempting
			 * non-blocking and if that fails, we unlock
			 * the file and block.
			 */
			error = FUNC20(host, &ext, vers, &timo, retries,
			    vp, F_SETLK, fl, flags & ~F_WAIT,
			    svid, fhlen, &fh.fh_bytes, size, reclaim);
			if (error == EAGAIN) {
				fl->l_type = F_UNLCK;
				error = FUNC14(host, &ext, vers, &timo,
				    retries, vp, F_UNLCK, fl, flags,
				    svid, fhlen, &fh.fh_bytes, size);
				fl->l_type = F_WRLCK;
				if (!error) {
					FUNC12(&nlm_svid_lock);
					if (ns->ns_active) {
						ns->ns_refs--;
						ns->ns_active = FALSE;
					}
					FUNC13(&nlm_svid_lock);
					flags |= F_WAIT;
					error = FUNC20(host, &ext, vers,
					    &timo, retries, vp, F_SETLK, fl,
					    flags, svid, fhlen, &fh.fh_bytes,
					    size, reclaim);
				}
			}
		} else {
			error = FUNC20(host, &ext, vers, &timo, retries,
			    vp, op, fl, flags, svid, fhlen, &fh.fh_bytes,
			    size, reclaim);
		}
		if (!error && ns) {
			FUNC12(&nlm_svid_lock);
			if (!ns->ns_active) {
				/*
				 * Add one to the reference count to
				 * hold onto the SVID for the lifetime
				 * of the lock. Note that since
				 * F_FLOCK only supports whole-file
				 * locks, there can only be one active
				 * lock for this SVID.
				 */
				ns->ns_refs++;
				ns->ns_active = TRUE;
			}
			FUNC13(&nlm_svid_lock);
		}
		break;

	case F_UNLCK:
		error = FUNC14(host, &ext, vers, &timo, retries,
		    vp, op, fl, flags, svid, fhlen, &fh.fh_bytes, size);
		if (!error && ns) {
			FUNC12(&nlm_svid_lock);
			if (ns->ns_active) {
				ns->ns_refs--;
				ns->ns_active = FALSE;
			}
			FUNC13(&nlm_svid_lock);
		}
		break;

	case F_GETLK:
		error = FUNC18(host, &ext, vers, &timo, retries,
		    vp, op, fl, flags, svid, fhlen, &fh.fh_bytes, size);
		break;

	default:
		error = EINVAL;
		break;
	}

	if (ns)
		FUNC17(ns);

	cred1 = td->td_ucred;
	td->td_ucred = cred;
	FUNC7(cred1);
	FUNC1(auth);

	FUNC19(host);
	FUNC9(servername, M_TEMP);
	return (error);
}