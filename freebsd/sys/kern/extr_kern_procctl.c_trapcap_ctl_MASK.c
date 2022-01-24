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
struct proc {int /*<<< orphan*/  p_flag2; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  P2_TRAPCAP ; 
 int /*<<< orphan*/  FUNC0 (struct proc*,int /*<<< orphan*/ ) ; 
#define  PROC_TRAPCAP_CTL_DISABLE 129 
#define  PROC_TRAPCAP_CTL_ENABLE 128 

__attribute__((used)) static int
FUNC1(struct thread *td, struct proc *p, int state)
{

	FUNC0(p, MA_OWNED);

	switch (state) {
	case PROC_TRAPCAP_CTL_ENABLE:
		p->p_flag2 |= P2_TRAPCAP;
		break;
	case PROC_TRAPCAP_CTL_DISABLE:
		p->p_flag2 &= ~P2_TRAPCAP;
		break;
	default:
		return (EINVAL);
	}
	return (0);
}