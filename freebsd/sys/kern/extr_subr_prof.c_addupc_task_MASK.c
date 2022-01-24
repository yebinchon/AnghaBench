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
typedef  int /*<<< orphan*/  v ;
typedef  scalar_t__ uintfptr_t ;
typedef  int /*<<< orphan*/  u_short ;
typedef  scalar_t__ u_int ;
struct uprof {scalar_t__ pr_off; scalar_t__ pr_size; scalar_t__ pr_base; } ;
struct thread {struct proc* td_proc; } ;
struct proc {int p_flag; scalar_t__ p_profthreads; TYPE_1__* p_stats; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {struct uprof p_prof; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,struct uprof*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int P_PROFIL ; 
 int P_STOPPROF ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 

void
FUNC9(struct thread *td, uintfptr_t pc, u_int ticks)
{
	struct proc *p = td->td_proc; 
	struct uprof *prof;
	caddr_t addr;
	u_int i;
	u_short v;
	int stop = 0;

	if (ticks == 0)
		return;

	FUNC1(p);
	if (!(p->p_flag & P_PROFIL)) {
		FUNC4(p);
		return;
	}
	p->p_profthreads++;
	prof = &p->p_stats->p_prof;
	FUNC2(p);
	if (pc < prof->pr_off ||
	    (i = FUNC0(pc, prof)) >= prof->pr_size) {
		FUNC3(p);
		goto out;
	}

	addr = prof->pr_base + i;
	FUNC3(p);
	FUNC4(p);
	if (FUNC5(addr, &v, sizeof(v)) == 0) {
		v += ticks;
		if (FUNC6(&v, addr, sizeof(v)) == 0) {
			FUNC1(p);
			goto out;
		}
	}
	stop = 1;
	FUNC1(p);

out:
	if (--p->p_profthreads == 0) {
		if (p->p_flag & P_STOPPROF) {
			FUNC8(&p->p_profthreads);
			p->p_flag &= ~P_STOPPROF;
			stop = 0;
		}
	}
	if (stop)
		FUNC7(p);
	FUNC4(p);
}