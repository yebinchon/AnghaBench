#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ucred {scalar_t__ cr_prison; int /*<<< orphan*/  cr_gid; int /*<<< orphan*/  cr_uid; } ;
struct thread {int /*<<< orphan*/ * td_retval; int /*<<< orphan*/  td_proc; struct ucred* td_ucred; } ;
struct TYPE_9__ {int key; int mode; int seq; int /*<<< orphan*/  gid; int /*<<< orphan*/  cgid; int /*<<< orphan*/  uid; int /*<<< orphan*/  cuid; } ;
struct TYPE_7__ {scalar_t__ msg_qbytes; TYPE_3__ msg_perm; int /*<<< orphan*/  msg_ctime; scalar_t__ msg_rtime; scalar_t__ msg_stime; scalar_t__ msg_lrpid; scalar_t__ msg_lspid; scalar_t__ msg_qnum; scalar_t__ msg_cbytes; int /*<<< orphan*/ * __msg_last; int /*<<< orphan*/ * __msg_first; } ;
struct msqid_kernel {TYPE_1__ u; TYPE_4__* cred; } ;
struct msgget_args {int key; int msgflg; } ;
struct TYPE_10__ {scalar_t__ cr_prison; } ;
struct TYPE_8__ {int msgmni; scalar_t__ msgmnb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EEXIST ; 
 int ENOENT ; 
 int ENOSPC ; 
 int ENOSYS ; 
 int IPC_CREAT ; 
 int IPC_EXCL ; 
 int IPC_PRIVATE ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_3__) ; 
 int MSG_LOCKED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RACCT_NMSGQ ; 
 TYPE_4__* FUNC6 (struct ucred*) ; 
 int FUNC7 (struct thread*,TYPE_3__*,int) ; 
 int FUNC8 (struct ucred*,struct msqid_kernel*) ; 
 int /*<<< orphan*/  FUNC9 (struct ucred*,struct msqid_kernel*) ; 
 int /*<<< orphan*/ * FUNC10 (struct ucred*) ; 
 TYPE_2__ msginfo ; 
 int /*<<< orphan*/  msq_mtx ; 
 struct msqid_kernel* msqids ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ racct_enable ; 
 int /*<<< orphan*/  time_second ; 

int
FUNC14(struct thread *td, struct msgget_args *uap)
{
	int msqid, error = 0;
	int key = uap->key;
	int msgflg = uap->msgflg;
	struct ucred *cred = td->td_ucred;
	struct msqid_kernel *msqkptr = NULL;

	FUNC2(("msgget(0x%x, 0%o)\n", key, msgflg));

	if (FUNC10(cred) == NULL)
		return (ENOSYS);

	FUNC11(&msq_mtx);
	if (key != IPC_PRIVATE) {
		for (msqid = 0; msqid < msginfo.msgmni; msqid++) {
			msqkptr = &msqids[msqid];
			if (msqkptr->u.msg_qbytes != 0 &&
			    msqkptr->cred != NULL &&
			    msqkptr->cred->cr_prison == cred->cr_prison &&
			    msqkptr->u.msg_perm.key == key)
				break;
		}
		if (msqid < msginfo.msgmni) {
			FUNC2(("found public key\n"));
			if ((msgflg & IPC_CREAT) && (msgflg & IPC_EXCL)) {
				FUNC2(("not exclusive\n"));
				error = EEXIST;
				goto done2;
			}
			FUNC0(FUNC3(msqid,
			    msqkptr->u.msg_perm));
			if ((error = FUNC7(td, &msqkptr->u.msg_perm,
			    msgflg & 0700))) {
				FUNC2(("requester doesn't have 0%o access\n",
				    msgflg & 0700));
				goto done2;
			}
#ifdef MAC
			error = mac_sysvmsq_check_msqget(cred, msqkptr);
			if (error != 0)
				goto done2;
#endif
			goto found;
		}
	}

	FUNC2(("need to allocate the msqid_ds\n"));
	if (key == IPC_PRIVATE || (msgflg & IPC_CREAT)) {
		for (msqid = 0; msqid < msginfo.msgmni; msqid++) {
			/*
			 * Look for an unallocated and unlocked msqid_ds.
			 * msqid_ds's can be locked by msgsnd or msgrcv while
			 * they are copying the message in/out.  We can't
			 * re-use the entry until they release it.
			 */
			msqkptr = &msqids[msqid];
			if (msqkptr->u.msg_qbytes == 0 &&
			    (msqkptr->u.msg_perm.mode & MSG_LOCKED) == 0)
				break;
		}
		if (msqid == msginfo.msgmni) {
			FUNC2(("no more msqid_ds's available\n"));
			error = ENOSPC;
			goto done2;
		}
#ifdef RACCT
		if (racct_enable) {
			PROC_LOCK(td->td_proc);
			error = racct_add(td->td_proc, RACCT_NMSGQ, 1);
			PROC_UNLOCK(td->td_proc);
			if (error != 0) {
				error = ENOSPC;
				goto done2;
			}
		}
#endif
		FUNC2(("msqid %d is available\n", msqid));
		msqkptr->u.msg_perm.key = key;
		msqkptr->u.msg_perm.cuid = cred->cr_uid;
		msqkptr->u.msg_perm.uid = cred->cr_uid;
		msqkptr->u.msg_perm.cgid = cred->cr_gid;
		msqkptr->u.msg_perm.gid = cred->cr_gid;
		msqkptr->u.msg_perm.mode = (msgflg & 0777);
		msqkptr->cred = FUNC6(cred);
		/* Make sure that the returned msqid is unique */
		msqkptr->u.msg_perm.seq = (msqkptr->u.msg_perm.seq + 1) & 0x7fff;
		msqkptr->u.__msg_first = NULL;
		msqkptr->u.__msg_last = NULL;
		msqkptr->u.msg_cbytes = 0;
		msqkptr->u.msg_qnum = 0;
		msqkptr->u.msg_qbytes = msginfo.msgmnb;
		msqkptr->u.msg_lspid = 0;
		msqkptr->u.msg_lrpid = 0;
		msqkptr->u.msg_stime = 0;
		msqkptr->u.msg_rtime = 0;
		msqkptr->u.msg_ctime = time_second;
#ifdef MAC
		mac_sysvmsq_create(cred, msqkptr);
#endif
		FUNC1(&msqkptr->u.msg_perm);
	} else {
		FUNC2(("didn't find it and wasn't asked to create it\n"));
		error = ENOENT;
		goto done2;
	}

found:
	/* Construct the unique msqid */
	td->td_retval[0] = FUNC3(msqid, msqkptr->u.msg_perm);
done2:
	FUNC12(&msq_mtx);
	return (error);
}