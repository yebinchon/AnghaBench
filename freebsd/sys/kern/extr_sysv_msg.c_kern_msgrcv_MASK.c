#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct thread {size_t* td_retval; TYPE_1__* td_proc; int /*<<< orphan*/  td_ucred; } ;
struct prison {int dummy; } ;
struct TYPE_11__ {scalar_t__ seq; } ;
struct TYPE_8__ {scalar_t__ msg_qbytes; size_t msg_cbytes; int /*<<< orphan*/  msg_rtime; int /*<<< orphan*/  msg_lrpid; int /*<<< orphan*/  msg_qnum; TYPE_5__ msg_perm; struct msg* __msg_last; struct msg* __msg_first; } ;
struct msqid_kernel {int /*<<< orphan*/  cred; TYPE_2__ u; } ;
struct msg {size_t msg_ts; long msg_type; short msg_spot; struct msg* msg_next; } ;
struct TYPE_10__ {int msgmni; size_t msgssz; short msgseg; } ;
struct TYPE_9__ {short next; } ;
struct TYPE_7__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int E2BIG ; 
 int EIDRM ; 
 int EINTR ; 
 int EINVAL ; 
 int ENOMSG ; 
 int ENOSYS ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int IPC_NOWAIT ; 
 int /*<<< orphan*/  IPC_R ; 
 int MSG_NOERROR ; 
 int PCATCH ; 
 int PZERO ; 
 int /*<<< orphan*/  RACCT_MSGQQUEUED ; 
 int /*<<< orphan*/  RACCT_MSGQSIZE ; 
 int FUNC5 (int /*<<< orphan*/ *,void*,size_t) ; 
 int FUNC6 (struct thread*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct msg*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct msqid_kernel*) ; 
 struct prison* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct msg*) ; 
 TYPE_4__ msginfo ; 
 TYPE_3__* msgmaps ; 
 int /*<<< orphan*/ * msgpool ; 
 int FUNC11 (struct msqid_kernel*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msq_mtx ; 
 int FUNC12 (struct prison*,struct msqid_kernel*) ; 
 struct msqid_kernel* msqids ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  time_second ; 
 int /*<<< orphan*/  FUNC17 (struct msqid_kernel*) ; 

int
FUNC18(struct thread *td, int msqid, void *msgp, size_t msgsz, long msgtyp,
    int msgflg, long *mtype)
{
	size_t len;
	struct msqid_kernel *msqkptr;
	struct msg *msghdr;
	struct prison *rpr;
	int msqix, error = 0;
	short next;

	rpr = FUNC9(td->td_ucred);
	if (rpr == NULL)
		return (ENOSYS);

	FUNC0(msqid);
	msqix = FUNC3(msqid);

	if (msqix < 0 || msqix >= msginfo.msgmni) {
		FUNC2(("msqid (%d) out of range (0<=msqid<%d)\n", msqix,
		    msginfo.msgmni));
		return (EINVAL);
	}

	msqkptr = &msqids[msqix];
	FUNC13(&msq_mtx);
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

	if ((error = FUNC12(rpr, msqkptr))) {
		FUNC2(("requester can't see prison\n"));
		goto done2;
	}

	if ((error = FUNC6(td, &msqkptr->u.msg_perm, IPC_R))) {
		FUNC2(("requester doesn't have read access\n"));
		goto done2;
	}

#ifdef MAC
	error = mac_sysvmsq_check_msqrcv(td->td_ucred, msqkptr);
	if (error != 0)
		goto done2;
#endif

	msghdr = NULL;
	while (msghdr == NULL) {
		if (msgtyp == 0) {
			msghdr = msqkptr->u.__msg_first;
			if (msghdr != NULL) {
				if (msgsz < msghdr->msg_ts &&
				    (msgflg & MSG_NOERROR) == 0) {
					FUNC2(("first message on the queue "
					    "is too big (want %zu, got %d)\n",
					    msgsz, msghdr->msg_ts));
					error = E2BIG;
					goto done2;
				}
#ifdef MAC
				error = mac_sysvmsq_check_msgrcv(td->td_ucred,
				    msghdr);
				if (error != 0)
					goto done2;
#endif
				if (msqkptr->u.__msg_first ==
				    msqkptr->u.__msg_last) {
					msqkptr->u.__msg_first = NULL;
					msqkptr->u.__msg_last = NULL;
				} else {
					msqkptr->u.__msg_first = msghdr->msg_next;
					if (msqkptr->u.__msg_first == NULL)
						FUNC15("msg_first/last screwed up #1");
				}
			}
		} else {
			struct msg *previous;
			struct msg **prev;

			previous = NULL;
			prev = &(msqkptr->u.__msg_first);
			while ((msghdr = *prev) != NULL) {
				/*
				 * Is this message's type an exact match or is
				 * this message's type less than or equal to
				 * the absolute value of a negative msgtyp?
				 * Note that the second half of this test can
				 * NEVER be true if msgtyp is positive since
				 * msg_type is always positive!
				 */

				if (msgtyp == msghdr->msg_type ||
				    msghdr->msg_type <= -msgtyp) {
					FUNC2(("found message type %ld, "
					    "requested %ld\n",
					    msghdr->msg_type, msgtyp));
					if (msgsz < msghdr->msg_ts &&
					    (msgflg & MSG_NOERROR) == 0) {
						FUNC2(("requested message "
						    "on the queue is too big "
						    "(want %zu, got %hu)\n",
						    msgsz, msghdr->msg_ts));
						error = E2BIG;
						goto done2;
					}
#ifdef MAC
					error = mac_sysvmsq_check_msgrcv(
					    td->td_ucred, msghdr);
					if (error != 0)
						goto done2;
#endif
					*prev = msghdr->msg_next;
					if (msghdr == msqkptr->u.__msg_last) {
						if (previous == NULL) {
							if (prev !=
							    &msqkptr->u.__msg_first)
								FUNC15("__msg_first/last screwed up #2");
							msqkptr->u.__msg_first =
							    NULL;
							msqkptr->u.__msg_last =
							    NULL;
						} else {
							if (prev ==
							    &msqkptr->u.__msg_first)
								FUNC15("__msg_first/last screwed up #3");
							msqkptr->u.__msg_last =
							    previous;
						}
					}
					break;
				}
				previous = msghdr;
				prev = &(msghdr->msg_next);
			}
		}

		/*
		 * We've either extracted the msghdr for the appropriate
		 * message or there isn't one.
		 * If there is one then bail out of this loop.
		 */

		if (msghdr != NULL)
			break;

		/*
		 * Hmph!  No message found.  Does the user want to wait?
		 */

		if ((msgflg & IPC_NOWAIT) != 0) {
			FUNC2(("no appropriate message found (msgtyp=%ld)\n",
			    msgtyp));
			/* The SVID says to return ENOMSG. */
			error = ENOMSG;
			goto done2;
		}

		/*
		 * Wait for something to happen
		 */

		FUNC2(("msgrcv:  goodnight\n"));
		error = FUNC11(msqkptr, &msq_mtx, (PZERO - 4) | PCATCH,
		    "msgrcv", 0);
		FUNC2(("msgrcv:  good morning (error=%d)\n", error));

		if (error != 0) {
			FUNC2(("msgrcv:  interrupted system call\n"));
			error = EINTR;
			goto done2;
		}

		/*
		 * Make sure that the msq queue still exists
		 */

		if (msqkptr->u.msg_qbytes == 0 ||
		    msqkptr->u.msg_perm.seq != FUNC4(msqid)) {
			FUNC2(("msqid deleted\n"));
			error = EIDRM;
			goto done2;
		}
	}

	/*
	 * Return the message to the user.
	 *
	 * First, do the bookkeeping (before we risk being interrupted).
	 */

	msqkptr->u.msg_cbytes -= msghdr->msg_ts;
	msqkptr->u.msg_qnum--;
	msqkptr->u.msg_lrpid = td->td_proc->p_pid;
	msqkptr->u.msg_rtime = time_second;

	FUNC16(msqkptr->cred, RACCT_MSGQQUEUED, 1);
	FUNC16(msqkptr->cred, RACCT_MSGQSIZE, msghdr->msg_ts);

	/*
	 * Make msgsz the actual amount that we'll be returning.
	 * Note that this effectively truncates the message if it is too long
	 * (since msgsz is never increased).
	 */

	FUNC2(("found a message, msgsz=%zu, msg_ts=%hu\n", msgsz,
	    msghdr->msg_ts));
	if (msgsz > msghdr->msg_ts)
		msgsz = msghdr->msg_ts;
	*mtype = msghdr->msg_type;

	/*
	 * Return the segments to the user
	 */

	next = msghdr->msg_spot;
	for (len = 0; len < msgsz; len += msginfo.msgssz) {
		size_t tlen;

		if (msgsz - len > msginfo.msgssz)
			tlen = msginfo.msgssz;
		else
			tlen = msgsz - len;
		if (next <= -1)
			FUNC15("next too low #3");
		if (next >= msginfo.msgseg)
			FUNC15("next out of range #3");
		FUNC14(&msq_mtx);
		error = FUNC5(&msgpool[next * msginfo.msgssz], msgp, tlen);
		FUNC13(&msq_mtx);
		if (error != 0) {
			FUNC2(("error (%d) copying out message segment\n",
			    error));
			FUNC10(msghdr);
			FUNC17(msqkptr);
			goto done2;
		}
		msgp = (char *)msgp + tlen;
		next = msgmaps[next].next;
	}

	/*
	 * Done, return the actual number of bytes copied out.
	 */

	FUNC10(msghdr);
	FUNC17(msqkptr);
	td->td_retval[0] = msgsz;
done2:
	FUNC14(&msq_mtx);
	return (error);
}