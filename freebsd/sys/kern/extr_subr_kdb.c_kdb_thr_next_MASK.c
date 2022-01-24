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
struct thread {struct proc* td_proc; } ;
struct proc {int p_flag; } ;

/* Variables and functions */
 struct thread* FUNC0 (struct proc*) ; 
 struct proc* FUNC1 (struct proc*,int /*<<< orphan*/ ) ; 
 int P_INMEM ; 
 struct thread* FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  p_list ; 
 int /*<<< orphan*/  td_plist ; 

struct thread *
FUNC3(struct thread *thr)
{
	struct proc *p;

	p = thr->td_proc;
	thr = FUNC2(thr, td_plist);
	do {
		if (thr != NULL)
			return (thr);
		p = FUNC1(p, p_list);
		if (p != NULL && (p->p_flag & P_INMEM))
			thr = FUNC0(p);
	} while (p != NULL);
	return (NULL);
}