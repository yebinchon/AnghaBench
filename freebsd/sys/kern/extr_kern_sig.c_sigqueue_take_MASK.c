#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct proc {int /*<<< orphan*/  p_pendingcnt; } ;
struct ksiginfo {int /*<<< orphan*/  ksi_signo; } ;
struct TYPE_5__ {int /*<<< orphan*/  sq_signals; int /*<<< orphan*/  sq_ptrace; int /*<<< orphan*/  sq_kill; int /*<<< orphan*/  sq_list; struct proc* sq_proc; } ;
typedef  TYPE_1__ sigqueue_t ;
struct TYPE_6__ {int ksi_flags; int /*<<< orphan*/  ksi_signo; TYPE_1__* ksi_sigq; } ;
typedef  TYPE_2__ ksiginfo_t ;

/* Variables and functions */
 int KSI_EXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ksiginfo* FUNC2 (int /*<<< orphan*/ *) ; 
 struct ksiginfo* FUNC3 (struct ksiginfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ksi_link ; 

void
FUNC5(ksiginfo_t *ksi)
{
	struct ksiginfo *kp;
	struct proc	*p;
	sigqueue_t	*sq;

	if (ksi == NULL || (sq = ksi->ksi_sigq) == NULL)
		return;

	p = sq->sq_proc;
	FUNC4(&sq->sq_list, ksi, ksi_link);
	ksi->ksi_sigq = NULL;
	if (!(ksi->ksi_flags & KSI_EXT) && p != NULL)
		p->p_pendingcnt--;

	for (kp = FUNC2(&sq->sq_list); kp != NULL;
	     kp = FUNC3(kp, ksi_link)) {
		if (kp->ksi_signo == ksi->ksi_signo)
			break;
	}
	if (kp == NULL && !FUNC1(sq->sq_kill, ksi->ksi_signo) &&
	    !FUNC1(sq->sq_ptrace, ksi->ksi_signo))
		FUNC0(sq->sq_signals, ksi->ksi_signo);
}