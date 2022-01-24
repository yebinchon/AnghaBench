#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct thread {int* td_retval; TYPE_3__* td_ucred; } ;
struct prison {int dummy; } ;
struct TYPE_11__ {scalar_t__ seq; int mode; int /*<<< orphan*/  key; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct msqid_ds {scalar_t__ msg_qbytes; TYPE_6__ msg_perm; int /*<<< orphan*/  msg_ctime; struct msg* __msg_first; } ;
struct msqid_kernel {TYPE_1__* cred; struct msqid_ds u; } ;
struct msg {struct msg* msg_next; } ;
struct TYPE_10__ {int /*<<< orphan*/  cr_prison; } ;
struct TYPE_9__ {int msgmni; scalar_t__ msgmnb; } ;
struct TYPE_8__ {int /*<<< orphan*/  cr_prison; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int EINVAL ; 
 int ENOSYS ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  IPC_M ; 
 int /*<<< orphan*/  IPC_PRIVATE ; 
 int /*<<< orphan*/  IPC_R ; 
#define  IPC_RMID 130 
#define  IPC_SET 129 
#define  IPC_STAT 128 
 int /*<<< orphan*/  PRIV_IPC_MSGSIZE ; 
 int FUNC6 (struct thread*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,struct msg*) ; 
 int FUNC8 (TYPE_3__*,struct msqid_kernel*,int) ; 
 struct prison* FUNC9 (TYPE_3__*) ; 
 TYPE_2__ msginfo ; 
 int /*<<< orphan*/  msq_mtx ; 
 int FUNC10 (struct prison*,struct msqid_kernel*) ; 
 int /*<<< orphan*/  FUNC11 (struct msqid_kernel*) ; 
 struct msqid_kernel* msqids ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  time_second ; 

int
FUNC15(struct thread *td, int msqid, int cmd, struct msqid_ds *msqbuf)
{
	int rval, error, msqix;
	struct msqid_kernel *msqkptr;
	struct prison *rpr;

	rpr = FUNC9(td->td_ucred);
	if (rpr == NULL)
		return (ENOSYS);

	FUNC0(cmd);
	FUNC1(msqid);
	msqix = FUNC4(msqid);

	if (msqix < 0 || msqix >= msginfo.msgmni) {
		FUNC3(("msqid (%d) out of range (0<=msqid<%d)\n", msqix,
		    msginfo.msgmni));
		return (EINVAL);
	}

	msqkptr = &msqids[msqix];

	FUNC12(&msq_mtx);
	if (msqkptr->u.msg_qbytes == 0) {
		FUNC3(("no such msqid\n"));
		error = EINVAL;
		goto done2;
	}
	if (msqkptr->u.msg_perm.seq != FUNC5(msqid)) {
		FUNC3(("wrong sequence number\n"));
		error = EINVAL;
		goto done2;
	}

	error = FUNC10(rpr, msqkptr);
	if (error != 0) {
		FUNC3(("requester can't see prison\n"));
		goto done2;
	}

#ifdef MAC
	error = mac_sysvmsq_check_msqctl(td->td_ucred, msqkptr, cmd);
	if (error != 0)
		goto done2;
#endif

	error = 0;
	rval = 0;

	switch (cmd) {

	case IPC_RMID:
	{
#ifdef MAC
		struct msg *msghdr;
#endif
		if ((error = FUNC6(td, &msqkptr->u.msg_perm, IPC_M)))
			goto done2;

#ifdef MAC
		/*
		 * Check that the thread has MAC access permissions to
		 * individual msghdrs.  Note: We need to do this in a
		 * separate loop because the actual loop alters the
		 * msq/msghdr info as it progresses, and there is no going
		 * back if half the way through we discover that the
		 * thread cannot free a certain msghdr.  The msq will get
		 * into an inconsistent state.
		 */
		for (msghdr = msqkptr->u.__msg_first; msghdr != NULL;
		    msghdr = msghdr->msg_next) {
			error = mac_sysvmsq_check_msgrmid(td->td_ucred, msghdr);
			if (error != 0)
				goto done2;
		}
#endif

		FUNC11(msqkptr);
	}

		break;

	case IPC_SET:
		FUNC2(&msqbuf->msg_perm);
		if ((error = FUNC6(td, &msqkptr->u.msg_perm, IPC_M)))
			goto done2;
		if (msqbuf->msg_qbytes > msqkptr->u.msg_qbytes) {
			error = FUNC14(td, PRIV_IPC_MSGSIZE);
			if (error)
				goto done2;
		}
		if (msqbuf->msg_qbytes > msginfo.msgmnb) {
			FUNC3(("can't increase msg_qbytes beyond %d"
			    "(truncating)\n", msginfo.msgmnb));
			msqbuf->msg_qbytes = msginfo.msgmnb;	/* silently restrict qbytes to system limit */
		}
		if (msqbuf->msg_qbytes == 0) {
			FUNC3(("can't reduce msg_qbytes to 0\n"));
			error = EINVAL;		/* non-standard errno! */
			goto done2;
		}
		msqkptr->u.msg_perm.uid = msqbuf->msg_perm.uid;	/* change the owner */
		msqkptr->u.msg_perm.gid = msqbuf->msg_perm.gid;	/* change the owner */
		msqkptr->u.msg_perm.mode = (msqkptr->u.msg_perm.mode & ~0777) |
		    (msqbuf->msg_perm.mode & 0777);
		msqkptr->u.msg_qbytes = msqbuf->msg_qbytes;
		msqkptr->u.msg_ctime = time_second;
		break;

	case IPC_STAT:
		if ((error = FUNC6(td, &msqkptr->u.msg_perm, IPC_R))) {
			FUNC3(("requester doesn't have read access\n"));
			goto done2;
		}
		*msqbuf = msqkptr->u;
		if (td->td_ucred->cr_prison != msqkptr->cred->cr_prison)
			msqbuf->msg_perm.key = IPC_PRIVATE;
		break;

	default:
		FUNC3(("invalid command %d\n", cmd));
		error = EINVAL;
		goto done2;
	}

	if (error == 0)
		td->td_retval[0] = rval;
done2:
	FUNC13(&msq_mtx);
	return (error);
}