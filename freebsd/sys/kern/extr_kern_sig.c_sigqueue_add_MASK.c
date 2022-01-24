#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct proc {scalar_t__ p_pendingcnt; } ;
struct ksiginfo {int ksi_flags; int ksi_signo; TYPE_1__* ksi_sigq; } ;
struct TYPE_3__ {int sq_flags; int /*<<< orphan*/  sq_signals; int /*<<< orphan*/  sq_kill; int /*<<< orphan*/  sq_ptrace; int /*<<< orphan*/  sq_list; struct proc* sq_proc; } ;
typedef  TYPE_1__ sigqueue_t ;
typedef  struct ksiginfo ksiginfo_t ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int KSI_HEAD ; 
 int KSI_INS ; 
 int KSI_PTRACE ; 
 int KSI_SIGQ ; 
 int KSI_TRAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int SIGKILL ; 
 int SIGSTOP ; 
 int SQ_INIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ksiginfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ksiginfo*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ksi_link ; 
 struct ksiginfo* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ksiginfo*,struct ksiginfo*) ; 
 int /*<<< orphan*/ * ksiginfo_zone ; 
 scalar_t__ max_pending_per_proc ; 
 int /*<<< orphan*/  signal_alloc_fail ; 
 int /*<<< orphan*/  signal_overflow ; 

__attribute__((used)) static int
FUNC7(sigqueue_t *sq, int signo, ksiginfo_t *si)
{
	struct proc *p = sq->sq_proc;
	struct ksiginfo *ksi;
	int ret = 0;

	FUNC0(sq->sq_flags & SQ_INIT, ("sigqueue not inited"));

	/*
	 * SIGKILL/SIGSTOP cannot be caught or masked, so take the fast path
	 * for these signals.
	 */
	if (signo == SIGKILL || signo == SIGSTOP || si == NULL) {
		FUNC1(sq->sq_kill, signo);
		goto out_set_bit;
	}

	/* directly insert the ksi, don't copy it */
	if (si->ksi_flags & KSI_INS) {
		if (si->ksi_flags & KSI_HEAD)
			FUNC2(&sq->sq_list, si, ksi_link);
		else
			FUNC3(&sq->sq_list, si, ksi_link);
		si->ksi_sigq = sq;
		goto out_set_bit;
	}

	if (FUNC4(ksiginfo_zone == NULL)) {
		FUNC1(sq->sq_kill, signo);
		goto out_set_bit;
	}

	if (p != NULL && p->p_pendingcnt >= max_pending_per_proc) {
		signal_overflow++;
		ret = EAGAIN;
	} else if ((ksi = FUNC5(0)) == NULL) {
		signal_alloc_fail++;
		ret = EAGAIN;
	} else {
		if (p != NULL)
			p->p_pendingcnt++;
		FUNC6(si, ksi);
		ksi->ksi_signo = signo;
		if (si->ksi_flags & KSI_HEAD)
			FUNC2(&sq->sq_list, ksi, ksi_link);
		else
			FUNC3(&sq->sq_list, ksi, ksi_link);
		ksi->ksi_sigq = sq;
	}

	if (ret != 0) {
		if ((si->ksi_flags & KSI_PTRACE) != 0) {
			FUNC1(sq->sq_ptrace, signo);
			ret = 0;
			goto out_set_bit;
		} else if ((si->ksi_flags & KSI_TRAP) != 0 ||
		    (si->ksi_flags & KSI_SIGQ) == 0) {
			FUNC1(sq->sq_kill, signo);
			ret = 0;
			goto out_set_bit;
		}
		return (ret);
	}

out_set_bit:
	FUNC1(sq->sq_signals, signo);
	return (ret);
}