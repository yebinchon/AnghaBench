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
struct thread {scalar_t__ td_sticks; scalar_t__ td_iticks; scalar_t__ td_uticks; scalar_t__ td_incruntime; int /*<<< orphan*/  td_rux; } ;
struct proc {int /*<<< orphan*/  p_rux; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 

void
FUNC3(struct proc *p, struct thread *td)
{

	FUNC1(td);
	FUNC0(&p->p_rux, td);
	FUNC0(&td->td_rux, td);
	td->td_incruntime = 0;
	td->td_uticks = 0;
	td->td_iticks = 0;
	td->td_sticks = 0;
	FUNC2(td);
}