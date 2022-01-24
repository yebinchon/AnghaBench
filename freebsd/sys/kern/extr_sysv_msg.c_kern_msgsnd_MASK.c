#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct thread {TYPE_2__* td_proc; scalar_t__* td_retval; int /*<<< orphan*/  td_ucred; } ;
struct prison {int dummy; } ;
struct TYPE_14__ {scalar_t__ seq; int mode; } ;
struct TYPE_10__ {size_t msg_qbytes; size_t msg_cbytes; int /*<<< orphan*/  msg_stime; int /*<<< orphan*/  msg_lspid; int /*<<< orphan*/  msg_qnum; struct msg* __msg_last; struct msg* __msg_first; TYPE_6__ msg_perm; } ;
struct msqid_kernel {TYPE_1__ u; } ;
struct msg {int msg_spot; size_t msg_ts; long msg_type; struct msg* msg_next; } ;
struct TYPE_13__ {int msgmni; size_t msgssz; short msgseg; } ;
struct TYPE_12__ {int next; } ;
struct TYPE_11__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EAGAIN ; 
 int EIDRM ; 
 int EINTR ; 
 int EINVAL ; 
 int ENOSYS ; 
 int EWOULDBLOCK ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int IPC_NOWAIT ; 
 int /*<<< orphan*/  IPC_W ; 
 int MSG_LOCKED ; 
 int PCATCH ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int PZERO ; 
 int /*<<< orphan*/  RACCT_MSGQQUEUED ; 
 int /*<<< orphan*/  RACCT_MSGQSIZE ; 
 int FUNC7 (void const*,int /*<<< orphan*/ *,size_t) ; 
 struct msg* free_msghdrs ; 
 int free_msgmaps ; 
 int FUNC8 (size_t,size_t) ; 
 int /*<<< orphan*/  hz ; 
 int FUNC9 (struct thread*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct msqid_kernel*,struct msg*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct msg*,struct msqid_kernel*) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct msqid_kernel*) ; 
 struct prison* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct msg*) ; 
 TYPE_5__ msginfo ; 
 TYPE_4__* msgmaps ; 
 int /*<<< orphan*/ * msgpool ; 
 int FUNC15 (struct msqid_kernel*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msq_mtx ; 
 int FUNC16 (struct prison*,struct msqid_kernel*) ; 
 struct msqid_kernel* msqids ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int nfree_msgmaps ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 scalar_t__ FUNC20 (TYPE_2__*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ racct_enable ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  time_second ; 
 int /*<<< orphan*/  FUNC22 (struct msqid_kernel*) ; 

int
FUNC23(struct thread *td, int msqid, const void *msgp,
    size_t msgsz, int msgflg, long mtype)
{
	int msqix, segs_needed, error = 0;
	struct msqid_kernel *msqkptr;
	struct msg *msghdr;
	struct prison *rpr;
	short next;
#ifdef RACCT
	size_t saved_msgsz = 0;
#endif

	rpr = FUNC13(td->td_ucred);
	if (rpr == NULL)
		return (ENOSYS);

	FUNC17(&msq_mtx);
	FUNC0(msqid);
	msqix = FUNC3(msqid);

	if (msqix < 0 || msqix >= msginfo.msgmni) {
		FUNC2(("msqid (%d) out of range (0<=msqid<%d)\n", msqix,
		    msginfo.msgmni));
		error = EINVAL;
		goto done2;
	}

	msqkptr = &msqids[msqix];
	FUNC1(&msqkptr->u.msg_perm);
	if (msqkptr->u.msg_qbytes == 0) {
		FUNC2(("no such message queue id\n"));
		error = EINVAL;
		goto done2;
	}
	if (msqkptr->u.msg_perm.seq != FUNC4(msqid)) {
		FUNC2(("wrong sequence number\n"));
		error = EINVAL;
		goto done2;
	}

	if ((error = FUNC16(rpr, msqkptr))) {
		FUNC2(("requester can't see prison\n"));
		goto done2;
	}

	if ((error = FUNC9(td, &msqkptr->u.msg_perm, IPC_W))) {
		FUNC2(("requester doesn't have write access\n"));
		goto done2;
	}

#ifdef MAC
	error = mac_sysvmsq_check_msqsnd(td->td_ucred, msqkptr);
	if (error != 0)
		goto done2;
#endif

#ifdef RACCT
	if (racct_enable) {
		PROC_LOCK(td->td_proc);
		if (racct_add(td->td_proc, RACCT_MSGQQUEUED, 1)) {
			PROC_UNLOCK(td->td_proc);
			error = EAGAIN;
			goto done2;
		}
		saved_msgsz = msgsz;
		if (racct_add(td->td_proc, RACCT_MSGQSIZE, msgsz)) {
			racct_sub(td->td_proc, RACCT_MSGQQUEUED, 1);
			PROC_UNLOCK(td->td_proc);
			error = EAGAIN;
			goto done2;
		}
		PROC_UNLOCK(td->td_proc);
	}
#endif

	segs_needed = FUNC8(msgsz, msginfo.msgssz);
	FUNC2(("msgsz=%zu, msgssz=%d, segs_needed=%d\n", msgsz,
	    msginfo.msgssz, segs_needed));
	for (;;) {
		int need_more_resources = 0;

		/*
		 * check msgsz
		 * (inside this loop in case msg_qbytes changes while we sleep)
		 */

		if (msgsz > msqkptr->u.msg_qbytes) {
			FUNC2(("msgsz > msqkptr->u.msg_qbytes\n"));
			error = EINVAL;
			goto done3;
		}

		if (msqkptr->u.msg_perm.mode & MSG_LOCKED) {
			FUNC2(("msqid is locked\n"));
			need_more_resources = 1;
		}
		if (msgsz + msqkptr->u.msg_cbytes > msqkptr->u.msg_qbytes) {
			FUNC2(("msgsz + msg_cbytes > msg_qbytes\n"));
			need_more_resources = 1;
		}
		if (segs_needed > nfree_msgmaps) {
			FUNC2(("segs_needed > nfree_msgmaps\n"));
			need_more_resources = 1;
		}
		if (free_msghdrs == NULL) {
			FUNC2(("no more msghdrs\n"));
			need_more_resources = 1;
		}

		if (need_more_resources) {
			int we_own_it;

			if ((msgflg & IPC_NOWAIT) != 0) {
				FUNC2(("need more resources but caller "
				    "doesn't want to wait\n"));
				error = EAGAIN;
				goto done3;
			}

			if ((msqkptr->u.msg_perm.mode & MSG_LOCKED) != 0) {
				FUNC2(("we don't own the msqid_ds\n"));
				we_own_it = 0;
			} else {
				/* Force later arrivals to wait for our
				   request */
				FUNC2(("we own the msqid_ds\n"));
				msqkptr->u.msg_perm.mode |= MSG_LOCKED;
				we_own_it = 1;
			}
			FUNC2(("msgsnd:  goodnight\n"));
			error = FUNC15(msqkptr, &msq_mtx, (PZERO - 4) | PCATCH,
			    "msgsnd", hz);
			FUNC2(("msgsnd:  good morning, error=%d\n", error));
			if (we_own_it)
				msqkptr->u.msg_perm.mode &= ~MSG_LOCKED;
			if (error == EWOULDBLOCK) {
				FUNC2(("msgsnd:  timed out\n"));
				continue;
			}
			if (error != 0) {
				FUNC2(("msgsnd:  interrupted system call\n"));
				error = EINTR;
				goto done3;
			}

			/*
			 * Make sure that the msq queue still exists
			 */

			if (msqkptr->u.msg_qbytes == 0) {
				FUNC2(("msqid deleted\n"));
				error = EIDRM;
				goto done3;
			}

		} else {
			FUNC2(("got all the resources that we need\n"));
			break;
		}
	}

	/*
	 * We have the resources that we need.
	 * Make sure!
	 */

	if (msqkptr->u.msg_perm.mode & MSG_LOCKED)
		FUNC19("msg_perm.mode & MSG_LOCKED");
	if (segs_needed > nfree_msgmaps)
		FUNC19("segs_needed > nfree_msgmaps");
	if (msgsz + msqkptr->u.msg_cbytes > msqkptr->u.msg_qbytes)
		FUNC19("msgsz + msg_cbytes > msg_qbytes");
	if (free_msghdrs == NULL)
		FUNC19("no more msghdrs");

	/*
	 * Re-lock the msqid_ds in case we page-fault when copying in the
	 * message
	 */

	if ((msqkptr->u.msg_perm.mode & MSG_LOCKED) != 0)
		FUNC19("msqid_ds is already locked");
	msqkptr->u.msg_perm.mode |= MSG_LOCKED;

	/*
	 * Allocate a message header
	 */

	msghdr = free_msghdrs;
	free_msghdrs = msghdr->msg_next;
	msghdr->msg_spot = -1;
	msghdr->msg_ts = msgsz;
	msghdr->msg_type = mtype;
#ifdef MAC
	/*
	 * XXXMAC: Should the mac_sysvmsq_check_msgmsq check follow here
	 * immediately?  Or, should it be checked just before the msg is
	 * enqueued in the msgq (as it is done now)?
	 */
	mac_sysvmsg_create(td->td_ucred, msqkptr, msghdr);
#endif

	/*
	 * Allocate space for the message
	 */

	while (segs_needed > 0) {
		if (nfree_msgmaps <= 0)
			FUNC19("not enough msgmaps");
		if (free_msgmaps == -1)
			FUNC19("nil free_msgmaps");
		next = free_msgmaps;
		if (next <= -1)
			FUNC19("next too low #1");
		if (next >= msginfo.msgseg)
			FUNC19("next out of range #1");
		FUNC2(("allocating segment %d to message\n", next));
		free_msgmaps = msgmaps[next].next;
		nfree_msgmaps--;
		msgmaps[next].next = msghdr->msg_spot;
		msghdr->msg_spot = next;
		segs_needed--;
	}

	/*
	 * Validate the message type
	 */

	if (msghdr->msg_type < 1) {
		FUNC14(msghdr);
		msqkptr->u.msg_perm.mode &= ~MSG_LOCKED;
		FUNC22(msqkptr);
		FUNC2(("mtype (%ld) < 1\n", msghdr->msg_type));
		error = EINVAL;
		goto done3;
	}

	/*
	 * Copy in the message body
	 */

	next = msghdr->msg_spot;
	while (msgsz > 0) {
		size_t tlen;
		if (msgsz > msginfo.msgssz)
			tlen = msginfo.msgssz;
		else
			tlen = msgsz;
		if (next <= -1)
			FUNC19("next too low #2");
		if (next >= msginfo.msgseg)
			FUNC19("next out of range #2");
		FUNC18(&msq_mtx);
		if ((error = FUNC7(msgp, &msgpool[next * msginfo.msgssz],
		    tlen)) != 0) {
			FUNC17(&msq_mtx);
			FUNC2(("error %d copying in message segment\n",
			    error));
			FUNC14(msghdr);
			msqkptr->u.msg_perm.mode &= ~MSG_LOCKED;
			FUNC22(msqkptr);
			goto done3;
		}
		FUNC17(&msq_mtx);
		msgsz -= tlen;
		msgp = (const char *)msgp + tlen;
		next = msgmaps[next].next;
	}
	if (next != -1)
		FUNC19("didn't use all the msg segments");

	/*
	 * We've got the message.  Unlock the msqid_ds.
	 */

	msqkptr->u.msg_perm.mode &= ~MSG_LOCKED;

	/*
	 * Make sure that the msqid_ds is still allocated.
	 */

	if (msqkptr->u.msg_qbytes == 0) {
		FUNC14(msghdr);
		FUNC22(msqkptr);
		error = EIDRM;
		goto done3;
	}

#ifdef MAC
	/*
	 * Note: Since the task/thread allocates the msghdr and usually
	 * primes it with its own MAC label, for a majority of policies, it
	 * won't be necessary to check whether the msghdr has access
	 * permissions to the msgq.  The mac_sysvmsq_check_msqsnd check would
	 * suffice in that case.  However, this hook may be required where
	 * individual policies derive a non-identical label for the msghdr
	 * from the current thread label and may want to check the msghdr
	 * enqueue permissions, along with read/write permissions to the
	 * msgq.
	 */
	error = mac_sysvmsq_check_msgmsq(td->td_ucred, msghdr, msqkptr);
	if (error != 0) {
		msg_freehdr(msghdr);
		wakeup(msqkptr);
		goto done3;
	}
#endif

	/*
	 * Put the message into the queue
	 */
	if (msqkptr->u.__msg_first == NULL) {
		msqkptr->u.__msg_first = msghdr;
		msqkptr->u.__msg_last = msghdr;
	} else {
		msqkptr->u.__msg_last->msg_next = msghdr;
		msqkptr->u.__msg_last = msghdr;
	}
	msqkptr->u.__msg_last->msg_next = NULL;

	msqkptr->u.msg_cbytes += msghdr->msg_ts;
	msqkptr->u.msg_qnum++;
	msqkptr->u.msg_lspid = td->td_proc->p_pid;
	msqkptr->u.msg_stime = time_second;

	FUNC22(msqkptr);
	td->td_retval[0] = 0;
done3:
#ifdef RACCT
	if (racct_enable && error != 0) {
		PROC_LOCK(td->td_proc);
		racct_sub(td->td_proc, RACCT_MSGQQUEUED, 1);
		racct_sub(td->td_proc, RACCT_MSGQSIZE, saved_msgsz);
		PROC_UNLOCK(td->td_proc);
	}
#endif
done2:
	FUNC18(&msq_mtx);
	return (error);
}