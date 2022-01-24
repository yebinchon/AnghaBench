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
struct proc {int p_flag; int /*<<< orphan*/  p_flag2; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  P2_INHERIT_PROTECTED ; 
 int PPROT_INHERIT ; 
 int PPROT_SET ; 
 int /*<<< orphan*/  FUNC0 (struct proc*,int /*<<< orphan*/ ) ; 
 int P_PROTECTED ; 
 int P_SYSTEM ; 
 scalar_t__ FUNC1 (struct thread*,struct proc*) ; 

__attribute__((used)) static int
FUNC2(struct thread *td, struct proc *p, int flags)
{

	FUNC0(p, MA_OWNED);
	if (p->p_flag & P_SYSTEM || FUNC1(td, p) != 0)
		return (0);
	if (flags & PPROT_SET) {
		p->p_flag |= P_PROTECTED;
		if (flags & PPROT_INHERIT)
			p->p_flag2 |= P2_INHERIT_PROTECTED;
	} else {
		p->p_flag &= ~P_PROTECTED;
		p->p_flag2 &= ~P2_INHERIT_PROTECTED;
	}
	return (1);
}