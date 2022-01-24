#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct proc {TYPE_2__* p_ksi; struct proc* p_pptr; TYPE_1__* p_ucred; int /*<<< orphan*/  p_pid; } ;
struct TYPE_5__ {int ksi_code; int ksi_status; int /*<<< orphan*/  ksi_uid; int /*<<< orphan*/  ksi_pid; int /*<<< orphan*/  ksi_signo; } ;
struct TYPE_4__ {int /*<<< orphan*/  cr_ruid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC3(struct proc *p, int reason, int status)
{
	FUNC1(p, MA_OWNED);
	FUNC1(p->p_pptr, MA_OWNED);

	if (p->p_ksi != NULL) {
		p->p_ksi->ksi_signo  = SIGCHLD;
		p->p_ksi->ksi_code   = reason;
		p->p_ksi->ksi_status = status;
		p->p_ksi->ksi_pid    = p->p_pid;
		p->p_ksi->ksi_uid    = p->p_ucred->cr_ruid;
		if (FUNC0(p->p_ksi))
			return;
	}
	FUNC2(p->p_pptr, SIGCHLD, p->p_ksi);
}