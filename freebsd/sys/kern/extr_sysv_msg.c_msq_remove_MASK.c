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
struct TYPE_2__ {int msg_qnum; int msg_cbytes; scalar_t__ msg_qbytes; struct msg* __msg_first; } ;
struct msqid_kernel {TYPE_1__ u; int /*<<< orphan*/ * cred; } ;
struct msg {struct msg* msg_next; scalar_t__ msg_ts; } ;

/* Variables and functions */
 int /*<<< orphan*/  RACCT_MSGQQUEUED ; 
 int /*<<< orphan*/  RACCT_MSGQSIZE ; 
 int /*<<< orphan*/  RACCT_NMSGQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct msqid_kernel*) ; 
 int /*<<< orphan*/  FUNC2 (struct msg*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct msqid_kernel*) ; 

__attribute__((used)) static void
FUNC6(struct msqid_kernel *msqkptr)
{
	struct msg *msghdr;

	FUNC4(msqkptr->cred, RACCT_NMSGQ, 1);
	FUNC4(msqkptr->cred, RACCT_MSGQQUEUED, msqkptr->u.msg_qnum);
	FUNC4(msqkptr->cred, RACCT_MSGQSIZE, msqkptr->u.msg_cbytes);
	FUNC0(msqkptr->cred);
	msqkptr->cred = NULL;

	/* Free the message headers */
	msghdr = msqkptr->u.__msg_first;
	while (msghdr != NULL) {
		struct msg *msghdr_tmp;

		/* Free the segments of each message */
		msqkptr->u.msg_cbytes -= msghdr->msg_ts;
		msqkptr->u.msg_qnum--;
		msghdr_tmp = msghdr;
		msghdr = msghdr->msg_next;
		FUNC2(msghdr_tmp);
	}

	if (msqkptr->u.msg_cbytes != 0)
		FUNC3("msg_cbytes is screwed up");
	if (msqkptr->u.msg_qnum != 0)
		FUNC3("msg_qnum is screwed up");

	msqkptr->u.msg_qbytes = 0;	/* Mark it as free */

#ifdef MAC
	mac_sysvmsq_cleanup(msqkptr);
#endif

	FUNC5(msqkptr);
}