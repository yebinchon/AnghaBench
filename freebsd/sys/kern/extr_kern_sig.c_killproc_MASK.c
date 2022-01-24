#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct proc {TYPE_2__* p_ucred; int /*<<< orphan*/  p_comm; int /*<<< orphan*/  p_pid; } ;
struct TYPE_4__ {int /*<<< orphan*/  cr_uid; TYPE_1__* cr_prison; } ;
struct TYPE_3__ {int /*<<< orphan*/  pr_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_PROC ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 

void
FUNC5(struct proc *p, char *why)
{

	FUNC1(p, MA_OWNED);
	FUNC0(KTR_PROC, "killproc: proc %p (pid %d, %s)", p, p->p_pid,
	    p->p_comm);
	FUNC3(LOG_ERR, "pid %d (%s), jid %d, uid %d, was killed: %s\n",
	    p->p_pid, p->p_comm, p->p_ucred->cr_prison->pr_id,
	    p->p_ucred->cr_uid, why);
	FUNC4(p);
	FUNC2(p, SIGKILL);
}