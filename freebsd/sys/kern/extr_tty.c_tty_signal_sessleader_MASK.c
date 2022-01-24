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
struct tty {TYPE_1__* t_session; int /*<<< orphan*/  t_flags; } ;
struct proc {int dummy; } ;
struct TYPE_2__ {struct proc* s_leader; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NSIG ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  TF_STOPPED ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct tty *tp, int sig)
{
	struct proc *p;

	FUNC4(tp, MA_OWNED);
	FUNC0(sig >= 1 && sig < NSIG);

	/* Make signals start output again. */
	tp->t_flags &= ~TF_STOPPED;

	if (tp->t_session != NULL && tp->t_session->s_leader != NULL) {
		p = tp->t_session->s_leader;
		FUNC1(p);
		FUNC3(p, sig);
		FUNC2(p);
	}
}