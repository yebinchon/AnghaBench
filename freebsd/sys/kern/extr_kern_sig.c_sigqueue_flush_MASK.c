#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct proc {int /*<<< orphan*/  p_pendingcnt; } ;
struct TYPE_7__ {int sq_flags; int /*<<< orphan*/  sq_ptrace; int /*<<< orphan*/  sq_kill; int /*<<< orphan*/  sq_signals; int /*<<< orphan*/  sq_list; struct proc* sq_proc; } ;
typedef  TYPE_1__ sigqueue_t ;
struct TYPE_8__ {int /*<<< orphan*/ * ksi_sigq; } ;
typedef  TYPE_2__ ksiginfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int SQ_INIT ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ksi_link ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 

void
FUNC6(sigqueue_t *sq)
{
	struct proc *p = sq->sq_proc;
	ksiginfo_t *ksi;

	FUNC0(sq->sq_flags & SQ_INIT, ("sigqueue not inited"));

	if (p != NULL)
		FUNC1(p, MA_OWNED);

	while ((ksi = FUNC3(&sq->sq_list)) != NULL) {
		FUNC4(&sq->sq_list, ksi, ksi_link);
		ksi->ksi_sigq = NULL;
		if (FUNC5(ksi) && p != NULL)
			p->p_pendingcnt--;
	}

	FUNC2(sq->sq_signals);
	FUNC2(sq->sq_kill);
	FUNC2(sq->sq_ptrace);
}