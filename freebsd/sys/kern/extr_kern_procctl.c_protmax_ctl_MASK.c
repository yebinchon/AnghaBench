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
struct proc {int p_flag2; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int P2_PROTMAX_DISABLE ; 
 int P2_PROTMAX_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct proc*,int /*<<< orphan*/ ) ; 
#define  PROC_PROTMAX_FORCE_DISABLE 130 
#define  PROC_PROTMAX_FORCE_ENABLE 129 
#define  PROC_PROTMAX_NOFORCE 128 

__attribute__((used)) static int
FUNC1(struct thread *td, struct proc *p, int state)
{
	FUNC0(p, MA_OWNED);

	switch (state) {
	case PROC_PROTMAX_FORCE_ENABLE:
		p->p_flag2 &= ~P2_PROTMAX_DISABLE;
		p->p_flag2 |= P2_PROTMAX_ENABLE;
		break;
	case PROC_PROTMAX_FORCE_DISABLE:
		p->p_flag2 |= P2_PROTMAX_DISABLE;
		p->p_flag2 &= ~P2_PROTMAX_ENABLE;
		break;
	case PROC_PROTMAX_NOFORCE:
		p->p_flag2 &= ~(P2_PROTMAX_ENABLE | P2_PROTMAX_DISABLE);
		break;
	default:
		return (EINVAL);
	}
	return (0);
}