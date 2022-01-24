#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct thread {int dummy; } ;
struct procctl_reaper_kill {int /*<<< orphan*/  rk_fpid; int /*<<< orphan*/  rk_killed; int /*<<< orphan*/  rk_sig; } ;
struct proc {int /*<<< orphan*/  p_pid; } ;
typedef  int /*<<< orphan*/  ksiginfo_t ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int FUNC2 (struct thread*,struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct thread *td, struct proc *p2, ksiginfo_t *ksi,
    struct procctl_reaper_kill *rk, int *error)
{
	int error1;

	FUNC0(p2);
	error1 = FUNC2(td, p2, rk->rk_sig);
	if (error1 == 0) {
		FUNC3(p2, rk->rk_sig, ksi);
		rk->rk_killed++;
		*error = error1;
	} else if (*error == ESRCH) {
		rk->rk_fpid = p2->p_pid;
		*error = error1;
	}
	FUNC1(p2);
}