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
struct uprof {int pr_scale; int /*<<< orphan*/  pr_size; int /*<<< orphan*/  pr_base; int /*<<< orphan*/  pr_off; } ;
struct thread {struct proc* td_proc; } ;
struct profil_args {int scale; int /*<<< orphan*/  size; int /*<<< orphan*/  samples; int /*<<< orphan*/  offset; } ;
struct proc {TYPE_1__* p_stats; } ;
struct TYPE_2__ {struct uprof p_prof; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 

int
FUNC6(struct thread *td, struct profil_args *uap)
{
	struct uprof *upp;
	struct proc *p;

	if (uap->scale > (1 << 16))
		return (EINVAL);

	p = td->td_proc;
	if (uap->scale == 0) {
		FUNC0(p);
		FUNC5(p);
		FUNC3(p);
		return (0);
	}
	FUNC0(p);
	upp = &td->td_proc->p_stats->p_prof;
	FUNC1(p);
	upp->pr_off = uap->offset;
	upp->pr_scale = uap->scale;
	upp->pr_base = uap->samples;
	upp->pr_size = uap->size;
	FUNC2(p);
	FUNC4(p);
	FUNC3(p);

	return (0);
}