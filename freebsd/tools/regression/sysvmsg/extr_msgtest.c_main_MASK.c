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
struct test_mymsg {int /*<<< orphan*/  mtext; int /*<<< orphan*/  mtype; } ;
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
struct TYPE_2__ {int mode; } ;
struct msqid_ds {TYPE_1__ msg_perm; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int IPC_CREAT ; 
 int /*<<< orphan*/  IPC_SET ; 
 int /*<<< orphan*/  IPC_STAT ; 
 int /*<<< orphan*/  MTYPE_1 ; 
 int /*<<< orphan*/  MTYPE_1_ACK ; 
 int /*<<< orphan*/  MTYPE_2 ; 
 int /*<<< orphan*/  MTYPE_2_ACK ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGSYS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msqid_ds*,int) ; 
 int /*<<< orphan*/  child_pid ; 
 int /*<<< orphan*/  cleanup ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  m1_str ; 
 int /*<<< orphan*/  m2_str ; 
 int FUNC7 (int,int /*<<< orphan*/ ,struct msqid_ds*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  msgkey ; 
 scalar_t__ FUNC9 (int,struct test_mymsg*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,struct test_mymsg*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct msqid_ds*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int sender_msqid ; 
 int FUNC13 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigchld_handler ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigsys_handler ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 

int
FUNC19(int argc, char *argv[])
{
	struct sigaction sa;
	struct msqid_ds m_ds;
	struct test_mymsg m;
	sigset_t sigmask;

	if (argc != 2)
		FUNC18();

	/*
	 * Install a SIGSYS handler so that we can exit gracefully if
	 * System V Message Queue support isn't in the kernel.
	 */
	sa.sa_handler = sigsys_handler;
	FUNC14(&sa.sa_mask);
	sa.sa_flags = 0;
	if (FUNC13(SIGSYS, &sa, NULL) == -1)
		FUNC2(1, "sigaction SIGSYS");

	/*
	 * Install and SIGCHLD handler to deal with all possible exit
	 * conditions of the receiver.
	 */
	sa.sa_handler = sigchld_handler;
	FUNC14(&sa.sa_mask);
	sa.sa_flags = 0;
	if (FUNC13(SIGCHLD, &sa, NULL) == -1)
		FUNC2(1, "sigaction SIGCHLD");

	msgkey = FUNC5(argv[1], 4160);

	/*
	 * Initialize child_pid to ourselves to that the cleanup function
	 * works before we create the receiver.
	 */
	child_pid = FUNC6();

	/*
	 * Make sure that when the sender exits, the message queue is
	 * removed.
	 */
	if (FUNC0(cleanup) == -1)
		FUNC2(1, "atexit");

	if ((sender_msqid = FUNC8(msgkey, IPC_CREAT | 0640)) == -1)
		FUNC2(1, "msgget");

	if (FUNC7(sender_msqid, IPC_STAT, &m_ds) == -1)
		FUNC2(1, "msgctl IPC_STAT");

	FUNC11(&m_ds, 0640);

	m_ds.msg_perm.mode = (m_ds.msg_perm.mode & ~0777) | 0600;

	if (FUNC7(sender_msqid, IPC_SET, &m_ds) == -1)
		FUNC2(1, "msgctl IPC_SET");

	FUNC1(&m_ds, sizeof m_ds);

	if (FUNC7(sender_msqid, IPC_STAT, &m_ds) == -1)
		FUNC2(1, "msgctl IPC_STAT");

	if ((m_ds.msg_perm.mode & 0777) != 0600)
		FUNC2(1, "IPC_SET of mode didn't hold");

	FUNC11(&m_ds, 0600);

	switch ((child_pid = FUNC4())) {
	case -1:
		FUNC2(1, "fork");
		/* NOTREACHED */

	case 0:
		FUNC12();
		break;

	default:
		break;
	}

	/*
	 * Send the first message to the receiver and wait for the ACK.
	 */
	m.mtype = MTYPE_1;
	FUNC16(m.mtext, m1_str);
	if (FUNC10(sender_msqid, &m, FUNC17(m1_str) + 1, 0) == -1)
		FUNC2(1, "sender: msgsnd 1");

	if (FUNC9(sender_msqid, &m, sizeof(m.mtext), MTYPE_1_ACK, 0) !=
	    FUNC17(m1_str) + 1)
		FUNC2(1, "sender: msgrcv 1 ack");

	FUNC11(&m_ds, 0600);

	/*
	 * Send the second message to the receiver and wait for the ACK.
	 */
	m.mtype = MTYPE_2;
	FUNC16(m.mtext, m2_str);
	if (FUNC10(sender_msqid, &m, FUNC17(m2_str) + 1, 0) == -1)
		FUNC2(1, "sender: msgsnd 2");

	if (FUNC9(sender_msqid, &m, sizeof(m.mtext), MTYPE_2_ACK, 0) !=
	    FUNC17(m2_str) + 1)
		FUNC2(1, "sender: msgrcv 2 ack");

	/*
	 * Suspend forever; when we get SIGCHLD, the handler will exit.
	 */
	FUNC14(&sigmask);
	(void) FUNC15(&sigmask);

	/*
	 * ...and any other signal is an unexpected error.
	 */
	FUNC3(1, "sender: received unexpected signal");
}